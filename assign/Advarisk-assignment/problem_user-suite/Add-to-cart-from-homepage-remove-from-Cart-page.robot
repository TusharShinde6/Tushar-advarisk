*** Settings ***
Resource            ${CURDIR}/../Keyword/Keywords.robot
Resource            ${CURDIR}/../Keyword/add-to-cart.robot
Test Setup    Open Browser   browser=Chrome
Test Teardown    Close Browser

*** Test Cases ***
Add-to-cart-from-homepage-remove-from-Cart-page
        [Documentation]     Add-to-cart-from-homepage-remove-from-Cart-page
        open login page
        sign in with problem user
        Add to cart from homepage
        check cart
        sleep   2s
        remove from cart