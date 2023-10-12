*** Settings ***
Resource            ${CURDIR}/../Keyword/Keywords.robot
Resource            ${CURDIR}/../Keyword/add-to-cart.robot
Test Setup    Open Browser   browser=Chrome
Test Teardown    Close Browser

*** Test Cases ***
sorting Product page
    sign in by standard_user
    sorting-name-A-to-Z
    sorting-name-Z-to-A
    Sort Price high-low
    Sort Price Low-high