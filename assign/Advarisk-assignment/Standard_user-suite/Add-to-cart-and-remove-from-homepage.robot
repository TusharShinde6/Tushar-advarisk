*** Settings ***
Resource            ${CURDIR}/../Keyword/Keywords.robot
Resource            ${CURDIR}/../Keyword/add-to-cart.robot
Test Setup    Open Browser   browser=Chrome
Test Teardown    Close Browser

*** Test Cases ***
Add-to-cart-and-remove-from-homepage
    [Documentation]         Add-to-cart-and-remove-from-homepage
    sign in    standard_user
    Add to cart from homepage
    remove from cart
