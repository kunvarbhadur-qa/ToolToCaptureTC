# Test Capture Tool - Selenium Version

This is the **Selenium version** of the Test Capture Tool. It uses Selenium WebDriver instead of Playwright for browser automation.

## Folder Structure

```
ToolToCaptureTC/
├── test_capture_tool_gui.py          # Playwright version (main folder)
├── selenium_version/                  # Selenium version (separate folder)
│   ├── test_capture_tool_selenium_gui.py
│   ├── requirements.txt
│   └── README.md
└── ...
```

## Installation

1. **Install Python dependencies:**
   ```bash
   cd selenium_version
   pip install -r requirements.txt
   ```

2. **Install ChromeDriver:**
   - Selenium requires ChromeDriver to control Chrome
   - **Option 1 (Recommended):** Use `webdriver-manager` (auto-downloads):
     ```bash
     pip install webdriver-manager
     ```
   - **Option 2:** Download manually from https://chromedriver.chromium.org/
     - Extract `chromedriver.exe` to a folder in your PATH
     - Or place it in the `selenium_version` folder

## Running the Tool

```bash
cd selenium_version
python test_capture_tool_selenium_gui.py
```

Or use the batch file:
```bash
run_selenium_gui.bat
```

## Features

- ✅ Same GUI as Playwright version
- ✅ Records user interactions
- ✅ Generates test cases (JSON, Text, Python, Excel)
- ✅ Can connect to manually opened browser
- ✅ Can auto-launch Chrome
- ✅ Sends URL to existing browser

## Differences from Playwright Version

| Feature | Playwright | Selenium |
|---------|-----------|----------|
| Browser Control | Playwright API | Selenium WebDriver |
| Event Listeners | Native events | Polling-based monitoring |
| Generated Scripts | Playwright scripts | Selenium scripts |
| ChromeDriver | Not needed | Required |

## Advantages of Selenium

- ✅ More widely used and documented
- ✅ Larger community support
- ✅ More tutorials and examples
- ✅ Better IDE support

## Disadvantages of Selenium

- ❌ Requires ChromeDriver (separate installation)
- ❌ Event listeners use polling (less efficient)
- ❌ May have similar resource loading issues

## Usage

1. **Enter URL** in the input field
2. **Click "Connect for Recording"** - Chrome will launch
3. **Interact with the browser** - All actions are recorded
4. **Click "Capture Page"** to record page states
5. **Click "Generate Test Cases"** when done

## Generated Files

- **JSON**: Machine-readable format
- **Text**: Human-readable documentation
- **Python**: Executable Selenium test script
- **Excel**: `Doceree_TestCases.xlsx` with formatted test cases

## Troubleshooting

**ChromeDriver not found:**
- Install `webdriver-manager`: `pip install webdriver-manager`
- Or download ChromeDriver manually and add to PATH

**Browser not launching:**
- Make sure Chrome is installed
- Check ChromeDriver version matches Chrome version

**Resource loading issues:**
- Use "Send URL to Browser" with manually opened Chrome
- Or connect to manually opened browser with remote debugging

## Notes

- The Selenium version generates Selenium test scripts (not Playwright)
- Both versions can coexist - they're in separate folders
- Use whichever version works better for your needs
