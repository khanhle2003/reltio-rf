*** Settings ***
Documentation     Login resource file with improved keywords
Library           SeleniumLibrary    timeout=10s
Variables         ../variables/common_variables.py
Resource          ../variables/login_variable.robot
Resource          ../variables/advanced_search_variables.robot
Resource          ../resources/login_resources.robot
Resource          ../resources/common.robot


*** Keywords ***

Click Address Button
    [Documentation]    Click on the Advanced Search Button
    Wait Until Element Is Visible And Enabled    ${ADDRESS_BUTTON}    timeout=20s
    Click Element    ${ADDRESS_BUTTON}

Go to Frame
    [Documentation]    Go to the Frame
    Select Frame    ${FRAME}

Click Add Button
    [Documentation]    Click on the Add Button
    Wait Until Element Is Visible And Enabled    ${ADD_BUTTON}    timeout=20s
    Click Element    ${ADD_BUTTON}

Fill Dynamic Field
    [Documentation]    Fill a field with dynamic field name
    [Arguments]    ${field_name}    ${value}
    ${field_xpath}=    Evaluate    "${ADD_ADDRESS_XPATH}" % "${field_name}"
    Wait Until Element Is Visible And Enabled    ${field_xpath}    timeout=20s
    Input Text    ${field_xpath}    ${value}
    
Press Save Button
    [Documentation]    Press Save button
    Wait Until Element Is Visible And Enabled    ${SAVE_AND_CLOSE_BUTTON}   timeout=20s
    Click Element    ${SAVE_AND_CLOSE_BUTTON}    
Add New Address With Fields
    [Documentation]    Add new address with ID, Name and Fax fields
    [Arguments]    ${id_value}    ${name_value}    ${fax_value}    ${phone_value}
    Click Address Button
    Go to Frame
    Click Add Button

    Fill Dynamic Field    Id    ${id_value}
    Fill Dynamic Field    Name    ${name_value}
    Fill Dynamic Field    Fax    ${fax_value}
    Fill Dynamic Field    Phone Number    ${phone_value}

    Press Save Button



