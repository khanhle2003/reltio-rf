*** Settings ***
Documentation     Test cases for login functionality
Resource          ../../resources/advanced_search_resources.robot
Variables         ../../variables/common_variables.py
*** Test Cases ***
Valid Login Test
    [Documentation]    Tests login with valid credentials
    Login To System    ${USERNAME}    ${PASSWORD}
    Add New Address With Fields    23    John Doe    0123456    123-456-789
    Sleep    1s

