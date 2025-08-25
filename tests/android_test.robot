*** Settings ***
Library    AppiumLibrary

*** Variables ***
${PLATFORM_NAME}    Android
${PLATFORM_VERSION}  10
${DEVICE_NAME}       Android Emulator
${APP}               ${EXECDIR}/app/gvm-staging.apk
${APPIUM_SERVER}     http://localhost:4723

*** Test Cases ***
Open App
    Open Application    ${APPIUM_SERVER}    platformName=${PLATFORM_NAME}    deviceName=${DEVICE_NAME}    app=${APP}    automationName=UiAutomator2
    Sleep    5

Click Login Button
    Click Element    id=com.example:id/login_button
    Sleep    2

Enter Credentials
    Input Text    id=com.example:id/username    testuser
    Input Text    id=com.example:id/password    password123
    Sleep    1

Submit Login
    Click Element    id=com.example:id/submit_button
    Sleep    2

Verify Login Success
    Page Should Contain Text    Welcome

Close App
    Close Application
