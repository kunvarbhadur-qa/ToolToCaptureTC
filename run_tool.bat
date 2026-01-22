@echo off
echo Installing dependencies...
pip install -r requirements.txt
echo.
echo Installing Playwright browsers...
playwright install
echo.
echo Starting Test Capture Tool...
python test_capture_tool.py
pause
