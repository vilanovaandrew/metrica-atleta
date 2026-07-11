@echo off
chcp 65001 > nul
title Atualizar Site Scouting (Wyscout)

REM Utiliza o ambiente virtual python do projeto 01
set "PYTHON_EXE=..\01.Coleta Sumulas\venv\Scripts\python.exe"

if not exist "%PYTHON_EXE%" (
    REM Fallback
    set "PYTHON_EXE=python"
)

echo Atualizando dados do site de scouting...
"%PYTHON_EXE%" atualizar_site.py
pause
