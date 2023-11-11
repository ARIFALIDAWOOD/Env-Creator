@echo off
set activate_bat=".Env\Scripts\activate.bat"
@REM check if activate_bat exists
if not exist %activate_bat% (
    @echo on
    echo "Creating Virtual Environment"
    @REM run pythom -m venv Env
    python -m venv .Env
    @REM wait until the virtual environment is created
    @REM timeout /t 7
    @REM activte the virtual environment
    call %activate_bat%
    @REM run pip install -r requirements.txt
    pip install -r config\requirements.txt
    @REM wait until the requirements are installed
    @REM timeout /t 14
    @echo off
) else (
    call %activate_bat%
)

@REM python run_all.py
cmd /k  