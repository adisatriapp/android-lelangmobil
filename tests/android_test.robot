*** Settings ***
Library    AppiumLibrary
Resource    ${CURDIR}/../resources/imports.resource

*** Test Cases ***
Register
    Given User open Application
    When Skip Landing
    AND Open menu profile
    AND Go to Register Page
    AND Register using valid data
    THEN Registration validation successful

Login
    AND Login using valid credentials
    Then Verify Login Success
    Close Application
