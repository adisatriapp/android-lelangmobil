### Running Android UI tests (Robot Framework + Appium)

#### Prerequisites
- Node.js and npm installed
- Java JDK 11+ installed and on PATH
- Android SDK (platform-tools, emulator) installed and on PATH
- Python 3.8+ with pip installed
- Appium CLI v2.x installed
- Robot Framework and AppiumLibrary installed
- AVD created (e.g., `Medium_Phone_API_36.0`)

Check versions:
```powershell
node -v
npm -v
java -version
adb version
python --version
robot --version
appium -v
```

Install Python packages:
```powershell
pip install robotframework robotframework-appiumlibrary Appium-Python-Client
```

#### Install Appium Android driver (UIAutomator2)
```powershell
appium driver install --source=npm appium-uiautomator2-driver@2.45.1
```

#### Launch the Android emulator
```powershell
emulator -list-avds
emulator -avd Medium_Phone_API_36.0 -netdelay none -netspeed full
```

Wait until the device is ready:
```powershell
adb wait-for-device
adb shell getprop sys.boot_completed
```

#### Start Appium server
```powershell
appium server -p 4723 --log-timestamp
```

#### Run the tests
From the project root (where `android_test.robot` is located):
```powershell
robot android_test.robot
```

Run a specific test (e.g., only launch the app):
```powershell
robot -t "Open App" android_test.robot
```

#### Notes
- The APK path is set to `${EXECDIR}/app/gvm-staging.apk` in `android_test.robot`.
- The `Open Application` capabilities use `automationName=UiAutomator2` and auto-detect the platform version.
