@echo off
echo Starting Test Capture Tool (GUI)...
python test_capture_tool_gui.py
if %ERRORLEVEL% NEQ 0 (
    echo.
    echo Error: Python script failed to run.
    echo Make sure Python and dependencies are installed.
    pause
)
