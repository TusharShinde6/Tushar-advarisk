*** Settings ***
Resource            Keyword/Keywords.robot
Resource            Keyword/add-to-cart.robot
Test Setup    Open Browser   browser=Chrome
Test Teardown    Close Browser

*** Test Cases ***
login-password-valication-check
    [Documentation]         login-password-valication-check
    open login page
    sign in with invalid password
