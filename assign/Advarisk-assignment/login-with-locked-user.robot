*** Settings ***
Resource            Keyword/Keywords.robot
Resource            Keyword/add-to-cart.robot
Test Setup    Open Browser   browser=Chrome
Test Teardown    Close Browser

*** Test Cases ***
login-with-locked-user
    [Documentation]         login-with-locked-user
    open login page
    sign in with locked user
