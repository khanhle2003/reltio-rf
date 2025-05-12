*** Variables ***
# input
${USERNAME_FIELD}    xpath=//input[@id='login']
${PASSWORD_FIELD}    xpath=//input[@id='password']

# button
${LOGIN_BUTTON}      xpath=//button[normalize-space()='Log in']

# error
${LOGIN_ERROR}       xpath=//p[contains(@class,'Form_error')]

