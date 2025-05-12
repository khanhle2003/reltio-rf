*** Settings ***
Documentation     Test cases for login functionality
Resource          ../../resources/login_resources.robot
Variables         ../../variables/common_variables.py
Variables         ../../variables/login_variable.robot
*** Test Cases ***
Valid Login Test
    [Documentation]    Tests login with valid credentials
    Login To System    ${USERNAME}    ${PASSWORD}
    Verify Login Success
    [Teardown]    Close Browser

# Invalid Username Test
#     [Documentation]    Tests login with invalid username
#     Login To System    invalid_user    ${PASSWORD}
#     Verify Login Failed    Invalid Username or Password
#     [Teardown]    Close Browser

# Invalid Password Test
#     [Documentation]    Tests login with invalid password
#     Login To System    ${USERNAME}    invalid_password
#     Verify Login Failed    Invalid password
#     [Teardown]    Close Browser

# Empty Fields Test
#     [Documentation]    Tests login with empty fields
#     Open Login Page
#     Submit Login
#     Verify Login Failed    Username and password required
#     [Teardown]    Close Browser