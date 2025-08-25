*** Settings ***
Resource    imports.resource

*** Keywords ***
Open menu profile
    Wait Until Element Is Visible    ${btn_profile}
    Click Element    ${btn_profile}
    