*** Settings ***
Resource            Keyword/Keywords.robot
Resource            Keyword/add-to-cart.robot
Test Setup    Open Browser   browser=Chrome
Test Teardown    Close Browser


*** Test Cases ***
twitter page
    [Documentation]         twitter page
    sign in by standard_user
    Sleep    2s
    twitter
    Sleep    3s