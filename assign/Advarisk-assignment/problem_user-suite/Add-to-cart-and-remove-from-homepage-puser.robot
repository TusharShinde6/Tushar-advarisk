*** Settings ***
Resource            ${CURDIR}/../Keyword/Keywords.robot
Resource            ${CURDIR}/../Keyword/add-to-cart.robot
Test Setup    Open Browser   browser=Chrome
Test Teardown    Close Browser

*** Test Cases ***
Add-to-cart-and-remove-from-homepageqa
    [Documentation]         Add-to-cart-and-remove-from-homepagea
    open login page
    sign in with problem user
    Add to cart from homepage
    remove from cart
