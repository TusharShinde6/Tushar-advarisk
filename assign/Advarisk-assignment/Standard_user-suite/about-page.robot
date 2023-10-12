*** Settings ***
Resource            ${CURDIR}/../Keyword/Keywords.robot
Resource            ${CURDIR}/../Keyword/add-to-cart.robot
Test Setup    Open Browser   browser=Chrome
Test Teardown    Close Browser


*** Test Cases ***
Open-about-page
    [Documentation]         Open-about-page
    sign in    standard_user
    Sleep    2s
    about page
    Sleep    3s