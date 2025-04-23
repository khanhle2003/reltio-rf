*** Settings ***
Documentation     Login resource file with improved keywords
Library           SeleniumLibrary    timeout=10s
Variables         ../variables/common_variables.py
Resource          ../variables/login_variable.robot
Resource          ../variables/advanced_search_variables.robot
Resource          ../resources/login_resources.robot
Resource          ../resources/common.robot
*** Keywords ***
# Advanced search specific keywords below
# Login To System is already available from login_resources.robot
Click User Button
    [Documentation]    Click on the User Button
    Wait Until Element Is Visible And Enabled    ${USER_BUTTON}    timeout=20s
    ${status}=    Run Keyword And Return Status    Click Element    ${USER_BUTTON}
    Run Keyword If    not ${status}    Execute JavaScript    document.querySelector('[data-reltio-id="reltio-user-button"]').click()
Click Logout Button
    [Documentation]    Click on the Logout Button
    Wait Until Element Is Visible And Enabled    ${LOGOUT_BUTTON}    timeout=20s
    Click Element    ${LOGOUT_BUTTON}
Open Console
    [Documentation]    Open the Console
    Click User Button
    Click Logout Button




