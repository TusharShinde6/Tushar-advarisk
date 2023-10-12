*** Settings ***
Resource            ${CURDIR}/../Keyword/Keywords.robot
Resource            ${CURDIR}/../Keyword/add-to-cart.robot
Test Setup    Open Browser   browser=Chrome
Test Teardown    Close Browser

*** Test Cases ***
return to homepage from product page from leftside Menu All Items option
    [Documentation]         return to homepage from product page from leftside Menu All Items option
    sign in    standard_user
    Add to cart from homepage
    Sleep    1s
    open product
    Sleep    1s
    option menu
    sleep       3s

