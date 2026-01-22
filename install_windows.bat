@echo off
echo ========================================
echo Test Capture Tool - Windows Installation
echo ========================================
echo.

echo Upgrading pip...
python -m pip install --upgrade pip
echo.

echo Installing dependencies (using pre-built wheels if available)...
pip install --upgrade playwright openpyxl
echo.

if %ERRORLEVEL% NEQ 0 (
    echo.
    echo Installation failed. Trying alternative method...
    pip install --only-binary :all: playwright openpyxl
    echo.
)

echo Installing Playwright browsers...
playwright install
echo.

echo ========================================
echo Installation Complete!
echo ========================================
echo.
echo You can now run the tool with: python test_capture_tool.py
echo.
pause
