*** Settings ***
Resource    imports.resource
Library    String
Library    OperatingSystem

*** Variables ***
${CREDS_PY}    ${OUTPUT DIR}/test_data/dataAuth.py

*** Keywords ***
Go to Register Page
    Wait Until Element Is Visible    ${btn_daftarDisini}
    Click Element    ${btn_daftarDisini}

Register using valid data
    Wait Until Element Is Visible    ${input_emailDaftar}
    Click Element    ${input_emailDaftar}
    
    # Cara 1: Random string + domain dummy (aman untuk e2e)
    ${randNumber}=    Generate Random String   9    [NUMBERS]
    ${rand}=    Generate Random String   10    [LETTERS][NUMBERS]
    ${EMAIL}=    Set Variable    testlogique-${rand}@example.com
    
    # Check if file exists and update data_email, or create new if it doesn't exist
    ${file_exists}=    Run Keyword And Return Status    File Should Exist    ${CREDS_PY}
    ${newline}=     Set Variable    \n
    
    IF    ${file_exists}
        # Read existing file content
        ${existing_content}=    Get File    ${CREDS_PY}    encoding=UTF-8
        ${lines}=    Split To Lines    ${existing_content}
        
        # Find and replace data_email line, or add if not found
        ${email_line_found}=    Set Variable    False
        ${updated_content}=    Set Variable    ${EMPTY}
        
        FOR    ${line}    IN    @{lines}
            ${is_email_line}=    Run Keyword And Return Status    Should Contain    ${line}    data_email
            IF    ${is_email_line}
                ${updated_content}=    Catenate    SEPARATOR=${newline}    ${updated_content}    data_email = "${EMAIL}"
                ${email_line_found}=    Set Variable    True
            ELSE
                ${updated_content}=    Catenate    SEPARATOR=${newline}    ${updated_content}    ${line}
            END
        END
        
        # If email line wasn't found, add it
        IF    not ${email_line_found}
            ${updated_content}=    Catenate    SEPARATOR=${newline}    ${updated_content}    data_email = "${EMAIL}"
        END
        
        # Write updated content back to file
        Create File    ${CREDS_PY}    ${updated_content}${newline}    encoding=UTF-8
    ELSE
        # Create new file if it doesn't exist
        ${content}=     Catenate    SEPARATOR=
        ...             data_email = "${EMAIL}"${newline}
        Create File     ${CREDS_PY}    ${content}    encoding=UTF-8
    END

    Input Text    ${input_emailDaftar}    ${EMAIL}
    
    Click Element    ${input_namaLengkap}
    Input Text    ${input_namaLengkap}    Logique ${rand}

    Click Element    ${input_noHP}
    Input Text    ${input_noHP}    0825${randNumber}

    Click Element    ${input_passwordDaftar}
    Input Text    ${input_passwordDaftar}    ${data_password}
    Click Element    ${input_passwordDaftarKonfirmasi}
    Input Text    ${input_passwordDaftarKonfirmasi}    ${data_password}

    Click Element    ${btn_submitDaftar}

Registration validation successful
    Wait Until Element Is Visible    ${btn_submitLogin}
