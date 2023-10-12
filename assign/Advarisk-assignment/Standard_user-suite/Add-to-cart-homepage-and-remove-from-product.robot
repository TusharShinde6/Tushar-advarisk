*** Settings ***
Resource            ${CURDIR}/../Keyword/Keywords.robot
Resource            ${CURDIR}/../Keyword/add-to-cart.robot
Test Setup    Open Browser   browser=Chrome
Test Teardown    Close Browser

*** Test Cases ***
Add-to-cart-homepage-and-remove-from-product
    [Documentation]         Add-to-cart-homepage-and-remove-from-product
    sign in    standard_user
    Add to cart from homepage
    Sleep    1s
    open product
    Sleep    1s
    remove from cart

