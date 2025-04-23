*** Settings ***
Documentation     Common resources and keywords for all test suites
Library           SeleniumLibrary
Library           OperatingSystem
Library           String
Library           Collections
Library           DateTime

*** Variables ***
${TIMEOUT}        20s
${RETRY_INTERVAL}  0.5s

*** Keywords ***
Open Test Browser
    [Arguments]    ${url}    ${browser}
    [Documentation]    Opens browser with given URL and browser type
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Set Selenium Timeout    ${TIMEOUT}

Close Test Browser
    [Documentation]    Closes all browsers and cleans up sessions
    Close All Browsers

Wait Until Element Is Visible And Enabled
    [Arguments]    ${locator}    ${timeout}=${TIMEOUT}
    [Documentation]    Waits until element is both visible and enabled
    Wait Until Element Is Visible    ${locator}    ${timeout}
    Wait Until Element Is Enabled    ${locator}    ${timeout}

Click Element When Ready
    [Arguments]    ${locator}    ${timeout}=${TIMEOUT}
    [Documentation]    Waits for element to be ready before clicking
    Wait Until Element Is Visible And Enabled    ${locator}    ${timeout}
    Click Element    ${locator}

Input Text When Ready
    [Arguments]    ${locator}    ${text}    ${timeout}=${TIMEOUT}
    [Documentation]    Waits for element to be ready before inputting text
    Wait Until Element Is Visible And Enabled    ${locator}    ${timeout}
    Input Text    ${locator}    ${text}