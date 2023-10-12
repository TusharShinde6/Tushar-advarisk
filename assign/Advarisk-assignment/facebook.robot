*** Settings ***
Resource            Keyword/Keywords.robot
Resource            Keyword/add-to-cart.robot
Test Setup    Open Browser   browser=Chrome
Test Teardown    Close Browser


*** Test Cases ***
facebook page
    [Documentation]         facebook page
    sign in by standard_user
    Sleep    2s
    facebook
    Sleep    3s