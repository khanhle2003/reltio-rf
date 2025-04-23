*** Settings ***
Documentation     Login resource file with improved keywords
Library           SeleniumLibrary    timeout=10s
Variables         ../variables/common_variables.py
Resource          ../variables/login_variable.robot


*** Keywords ***
Open Login Page
    [Documentation]    Opens the login page and waits for it to load
    Open Browser        ${URL}    ${BROWSER}
    Maximize Browser Window
    Wait Until Page Contains Element    ${USERNAME_FIELD}    timeout=10s

Input Username
    [Documentation]    Enters username in the username field
    [Arguments]    ${username}
    Wait Until Element Is Visible    ${USERNAME_FIELD}
    Clear Element Text               ${USERNAME_FIELD}
    Input Text                       ${USERNAME_FIELD}    ${username}
  
Input Password
    [Documentation]    Enters password in the password field
    [Arguments]    ${password}
    Wait Until Element Is Visible    ${PASSWORD_FIELD}
    Clear Element Text               ${PASSWORD_FIELD}
    Input Text                       ${PASSWORD_FIELD}    ${password}
    
Submit Login    
    [Documentation]    Clicks the login button and waits for the page to load
    Wait Until Element Is Enabled    ${LOGIN_BUTTON}
    Click Button                     ${LOGIN_BUTTON}





Login To System
    [Documentation]    Complete login flow with default or custom credentials
    [Arguments]    ${username}=${USERNAME}    ${password}=${PASSWORD}
    Open Login Page
    Input Username    ${username}
    Input Password    ${password}
    Submit Login
    
Verify Login Success
    [Documentation]    Verifies that login was successful
    Wait Until Page Does Not Contain Element    ${LOGIN_ERROR}    timeout=5s
    Page Should Not Contain Element             ${LOGIN_ERROR}

Verify Login Failed
    [Documentation]    Verifies that login failed with error message
    [Arguments]    ${expected_error}=Invalid Username or Password
    Wait Until Element Is Visible    ${LOGIN_ERROR}    timeout=5s
    Element Should Contain           ${LOGIN_ERROR}    ${expected_error}
