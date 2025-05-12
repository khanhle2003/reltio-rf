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

Click Advanced Filter
    [Documentation]    Click on the Add Button
    Wait Until Element Is Visible And Enabled    ${SHOW_ADV_FILTER}    timeout=20s
    Click Element    ${SHOW_ADV_FILTER}

Choose Dropdown Criterion
    [Documentation]    Choose a criterion 
    Wait Until Element Is Visible And Enabled    ${SHOW_CRITERION_FILTER}    timeout=20s
    Click Element    ${SHOW_CRITERION_FILTER}
Choose Criterion
    [Documentation]    Choose a criterion 
    Wait Until Element Is Visible And Enabled    ${ID_FIELD}    timeout=20s
    Click Element    ${ID_FIELD}
Fill Input ID Field
    [Documentation]    Fill the Input ID Field
    Wait Until Element Is Visible And Enabled    ${INPUT_ID_FIELD}    timeout=20s
    Input Text    ${INPUT_ID_FIELD}    23
Apply Filter
    [Documentation]    Apply the filter
    Wait Until Element Is Visible And Enabled    ${APPLY_BUTTON}    timeout=20s
    Click Element    ${APPLY_BUTTON}
Go out Frame
    [Documentation]    Go out of the Frame
        Unselect Frame
        Select Frame    ${FRAME}
Check Address Need Update
    [Documentation]    Check if the address need update
    [Arguments]    ${number}
    ${xpath}=    Evaluate    "${ADDRESS_NEED_UPDATE}" % "${number}"
    Log    Actual XPath: ${xpath}    console=yes
    Wait Until Element Is Visible And Enabled    ${xpath}    timeout=20s
    Click Element    ${xpath}
Update Address
    [Documentation]    Update address with ID, Name and Fax fields
    Click Address Button
    Go to Frame
    Click Advanced Filter
    Choose Dropdown Criterion
    Choose Criterion
    Fill Input ID Field
    Apply Filter
    Check Address Need Update    23
