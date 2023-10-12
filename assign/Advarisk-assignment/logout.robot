*** Settings ***
Resource            Keyword/Keywords.robot
Resource            Keyword/add-to-cart.robot
Test Setup    Open Browser   browser=Chrome
Test Teardown    Close Browser


*** Test Cases ***
Logout
    [Documentation]         User logged out
    sign in by standard_user
    Sleep    2s
    Logout
    Sleep    3s