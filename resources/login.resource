*** Settings ***
Resource    imports.resource

*** Keywords ***
User open Application
    Open Application    ${APPIUM_SERVER}    platformName=${PLATFORM_NAME}    deviceName=${DEVICE_NAME}    app=${APP}    automationName=UiAutomator2
    Sleep    5

Skip Landing
    Click Element    ${btn_selanjutnya}
    Click Element    ${btn_selanjutnya}
    Click Element    ${btn_masukLanding}


Login using valid credentials
    Wait Until Element Is Visible    ${input_emailLogin}
    Click Element    ${input_emailLogin}
    Input Text    ${input_emailLogin}    ${data_email}
    Click Element    ${input_passLogin}
    Input Text    ${input_passLogin}    ${data_password}
    Click Element    ${btn_submitLogin}

Verify Login Success
    Element Should Be Visible    ${btn_beranda}