*** Settings ***
Resource            Keyword/Keywords.robot
Resource            Keyword/add-to-cart.robot
Test Setup    Open Browser   browser=Chrome
Test Teardown    Close Browser


*** Test Cases ***
linkedin page
    [Documentation]         linkedin page
    sign in by standard_user
    Sleep    2s
    linkedin
    Sleep    3s