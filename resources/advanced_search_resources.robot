*** Settings ***
Documentation     Login resource file with improved keywords
Library           SeleniumLibrary    timeout=10s
Variables         ../variables/common_variables.py
Resource          ../variables/login_variable.robot
Resource          ../variables/advanced_search_variables.robot
Resource          ../resources/login_resources.robot

*** Keywords ***
# Advanced search specific keywords below
# Login To System is already available from login_resources.robot


