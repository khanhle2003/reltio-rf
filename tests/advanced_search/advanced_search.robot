*** Settings ***
Documentation     Test cases for login functionality
Resource          ../../resources/advanced_search_resources.robot
Variables         ../../variables/common_variables.py
*** Test Cases ***
Valid Login Test
    [Documentation]    Tests login with valid credentials
    Login To System    ${USERNAME}    ${PASSWORD}
    Verify Login Success
    [Teardown]    Close Browser
