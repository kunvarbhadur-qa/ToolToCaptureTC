# Test Capture Tool

A comprehensive testing tool that captures user interactions and automatically generates test cases for web applications.

## Features

- **Graphical User Interface**: Easy-to-use GUI with real-time status updates
- **Multi-Browser Support**: Works with Chrome, Firefox, and Edge
- **Custom Chrome Executable**: Option to use your own Chrome browser executable
- **Private/Incognito Mode**: Supports both normal and private browsing modes
- **Interactive Recording**: Captures user interactions in real-time
- **Automatic Test Generation**: Generates test cases in multiple formats (JSON, Text, Python, Excel)
- **Page State Capture**: Records buttons, input fields, text, and page information
- **Real-time Logging**: View all actions and events in the log panel
- **Activity Log Management**: Save, export, and manage activity logs with auto-save feature
- **Action Tracking**: See all recorded actions in a table view

## Installation

### Windows Users

If you encounter errors about Microsoft Visual C++ Build Tools:

**Option 1: Install pre-built wheels (Recommended)**
```bash
pip install --only-binary :all: -r requirements.txt
```

**Option 2: Install Microsoft C++ Build Tools**
1. Download and install from: https://visualstudio.microsoft.com/visual-cpp-build-tools/
2. Select "C++ build tools" workload during installation
3. Then run: `pip install -r requirements.txt`

**Option 3: Use pre-compiled packages**
```bash
pip install --upgrade pip
pip install playwright openpyxl
```

### All Platforms

1. **Install Python dependencies:**
   ```bash
   pip install -r requirements.txt
   ```
   
   Or if you encounter build issues:
   ```bash
   pip install --upgrade pip
   pip install playwright openpyxl
   ```

2. **Install Playwright browsers:**
   ```bash
   playwright install
   ```

   For specific browsers:
   ```bash
   playwright install chromium  # For Chrome
   playwright install firefox   # For Firefox
   playwright install msedge    # For Edge (if needed)
   ```

## Usage

### GUI Version (Recommended)

1. **Run the GUI tool:**
   ```bash
   python test_capture_tool_gui.py
   ```

2. **Use the graphical interface:**
   - Select your browser (Chrome, Firefox, or Edge) using radio buttons
   - Choose mode (Normal or Incognito/Private)
   - Enter the URL in the text field
   - Click "Open Browser" to start
   - Interact with the browser window
   - Click "Capture Page" to record page states
   - View recorded actions in the table
   - Click "Generate Test Cases" when done
   - Select output folder when prompted

### Command Line Version

1. **Run the CLI tool:**
   ```bash
   python test_capture_tool.py
   ```

2. **Follow the prompts:**
   - Select your browser (Chrome, Firefox, or Edge)
   - Choose mode (Normal or Private/Incognito)
   - Enter the URL you want to test
   - Interact with the application
   - Type `capture` to record page state
   - Type `stop` to finish and generate test cases

## Commands During Recording

- `capture` - Capture current page state (buttons, inputs, text)
- `stop` - Stop recording and generate test cases
- `help` - Show available commands

## Output Files

The tool generates four types of test case files in the `test_cases/` directory:

1. **Excel File** (`Doceree_TestCases.xlsx`): Comprehensive test case workbook with multiple sheets:
   - **Test Case Summary**: Overview of test case information
   - **Actions**: All recorded actions with timestamps and descriptions
   - **Page Elements**: Detailed list of buttons, inputs, and other elements found on each page
2. **JSON File** (`test_case_YYYYMMDD_HHMMSS.json`): Machine-readable format with all recorded actions
3. **Text File** (`test_case_YYYYMMDD_HHMMSS.txt`): Human-readable test case documentation
4. **Python File** (`test_case_YYYYMMDD_HHMMSS.py`): Executable Playwright test script

## Example Workflow

```
1. Run: python test_capture_tool.py
2. Select: Chrome (1)
3. Select: Incognito Mode (2)
4. Enter URL: https://example.com
5. Interact with the page
6. Type 'capture' to record state
7. Continue interacting
8. Type 'stop' when done
9. Test cases are generated automatically
```

## What Gets Captured

- **Navigation Events**: Page loads and URL changes
- **Page Elements**: Buttons, input fields, links
- **Page Content**: Text, titles, URLs
- **Timestamps**: All actions are timestamped
- **Page State**: Complete page information at capture points

## Browser Support

| Browser | Normal Mode | Private Mode |
|---------|------------|--------------|
| Chrome  | ✅         | ✅ (Incognito) |
| Firefox | ✅         | ✅ (Private)   |
| Edge    | ✅         | ✅ (Private)   |

## Requirements

- Python 3.7 or higher
- Playwright library
- One or more supported browsers installed

## Notes

- The tool opens browsers in non-headless mode so you can see and interact with them
- Actions are slowed down slightly (100ms delay) for better recording
- Page recordings are limited to the first 50 buttons and 50 input fields to avoid overwhelming output
- Test recordings (videos) are saved in the `test_recordings/` directory

## Troubleshooting

**Browser not found:**
- Make sure you've run `playwright install` for the browser you want to use
- For Edge, ensure it's installed on your system

**Permission errors:**
- Make sure you have write permissions in the current directory
- The tool creates `test_cases/` and `test_recordings/` directories

**Import errors:**
- Ensure all dependencies are installed: `pip install -r requirements.txt`

**Build errors on Windows (Microsoft Visual C++ required):**
- Try installing with pre-built wheels: `pip install --only-binary :all: -r requirements.txt`
- Or install Microsoft C++ Build Tools from: https://visualstudio.microsoft.com/visual-cpp-build-tools/
- Alternative: `pip install --upgrade pip` then `pip install playwright openpyxl`

## License

This tool is provided as-is for testing purposes.
