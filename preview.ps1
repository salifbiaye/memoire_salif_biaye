Set-Location $PSScriptRoot

$watchedExtensions = @(".tex", ".png", ".jpg", ".jpeg")

function Get-SourceStamp {
    Get-ChildItem -Path $PSScriptRoot -Recurse -File |
        Where-Object { $watchedExtensions -contains $_.Extension.ToLowerInvariant() } |
        Sort-Object FullName |
        ForEach-Object { "$($_.FullName)|$($_.LastWriteTimeUtc.Ticks)|$($_.Length)" }
}

function Invoke-LatexBuild {
    Write-Host ""
    Write-Host "Compilation du memoire..." -ForegroundColor Cyan
    pdflatex -interaction=nonstopmode -halt-on-error main.tex
    if ($LASTEXITCODE -eq 0) {
        pdflatex -interaction=nonstopmode -halt-on-error main.tex
    }
    if ($LASTEXITCODE -eq 0) {
        Write-Host "PDF mis a jour : main.pdf" -ForegroundColor Green
    }
    else {
        Write-Host "Compilation interrompue. Corrige l'erreur affichee puis sauvegarde." -ForegroundColor Yellow
    }
}

$lastStamp = Get-SourceStamp
Invoke-LatexBuild

Write-Host ""
Write-Host "Preview actif. Laisse cette fenetre ouverte, puis sauvegarde tes fichiers .tex." -ForegroundColor Cyan
Write-Host "Ouvre main.pdf dans WebStorm ou dans ton lecteur PDF : il se mettra a jour apres chaque sauvegarde." -ForegroundColor Cyan

while ($true) {
    Start-Sleep -Seconds 1
    $currentStamp = Get-SourceStamp
    if (($currentStamp -join "`n") -ne ($lastStamp -join "`n")) {
        $lastStamp = $currentStamp
        Invoke-LatexBuild
    }
}
