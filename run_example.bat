@echo off
setlocal EnableExtensions EnableDelayedExpansion

set "ROOT=%~dp0"
set "EXAMPLES_DIR=%ROOT%examples"

if "%~1"=="" goto :help
if /I "%~1"=="help" goto :help
if /I "%~1"=="-h" goto :help
if /I "%~1"=="--help" goto :help
if /I "%~1"=="list" goto :list

if /I "%~1"=="all" (
    call :run minimal_demo
    call :run controls_test_suite
    call :run style_selector
    call :run scroll_panel
    call :run property_list
    call :run custom_file_dialog
    call :run custom_input_box
    call :run custom_sliders
    call :run floating_window
    call :run portable_window
    call :run animation_curve
    call :run image_exporter
    call :run image_importer_raw
    goto :eof
)

:loop_args
if "%~1"=="" goto :eof
call :run %~1
shift
goto :loop_args

:run
set "NAME=%~1"
set "DIR=%EXAMPLES_DIR%\%NAME%"
set "EXE=%DIR%\%NAME%.exe"

if not exist "%DIR%" (
    echo [ERROR] Example folder not found: %NAME%
    goto :eof
)

if not exist "%EXE%" (
    echo [ERROR] Executable not found: %EXE%
    echo         Try compiling first with: cd /d "%EXAMPLES_DIR%" ^&^& mingw32-make.exe
    goto :eof
)

echo [RUN] %NAME%
start "" /D "%DIR%" "%EXE%"
goto :eof

:list
echo Available examples:
echo   minimal_demo
echo   controls_test_suite
echo   style_selector
echo   scroll_panel
echo   property_list
echo   custom_file_dialog
echo   custom_input_box
echo   custom_sliders
echo   floating_window
echo   portable_window
echo   animation_curve
echo   image_exporter
echo   image_importer_raw
echo.
echo Usage:
echo   run_example.bat list
echo   run_example.bat controls_test_suite
echo   run_example.bat style_selector image_exporter
echo   run_example.bat all
goto :eof

:help
echo raygui example launcher
echo.
echo Usage:
echo   run_example.bat list
echo   run_example.bat ^<example_name^> [more_examples...]
echo   run_example.bat all
echo.
echo Example:
echo   run_example.bat controls_test_suite
echo   run_example.bat property_list scroll_panel
goto :eof
