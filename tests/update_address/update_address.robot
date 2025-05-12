*** Settings ***
Documentation     Test cases for login functionality
Resource          ../../resources/advanced_search_resources.robot
Resource          ../../resources/update_address_resources.robot
Variables         ../../variables/common_variables.py
*** Test Cases ***
Valid Login Test
    [Documentation]    Tests login with valid credentials
    Login To System    ${USERNAME}    ${PASSWORD}
    Update Address
    Sleep    1s
