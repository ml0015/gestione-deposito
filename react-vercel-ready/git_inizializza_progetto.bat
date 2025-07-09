
@echo off
title Inizializzazione Git - Progetto React
echo =======================================
echo    CREAZIONE REPOSITORY GIT AUTOMATICA
echo =======================================

:: Verifica se Git è installato
where git >nul 2>nul
IF %ERRORLEVEL% NEQ 0 (
    echo ❌ Git non è installato. Scaricalo da https://git-scm.com/download/win
    pause
    exit /b
)

:: Spostati nella directory dello script
cd /d %~dp0

:: Inizializza Git e aggiunge tutti i file
git init
git add .
git commit -m "Prima versione"
echo ✅ Repository Git inizializzato!

echo.
echo Ora crea un nuovo repository su https://github.com/new
echo Poi esegui questi comandi nel terminale:

echo.
echo git remote add origin https://github.com/TUO-UTENTE/NOME-REPO.git
echo git branch -M main
echo git push -u origin main
echo.
echo 🔁 Dopo aver caricato su GitHub, torna su https://vercel.com/new per pubblicare.
pause
