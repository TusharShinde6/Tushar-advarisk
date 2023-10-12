*** Settings ***
Resource            ${CURDIR}/../Keyword/Keywords.robot
Resource            ${CURDIR}/../Keyword/add-to-cart.robot
Test Setup    Open Browser   browser=Chrome
Test Teardown    Close Browser

*** Test Cases ***
Add-to-cart-from-homepage-remove-from-Cart-page-performance_glitch_user
        [Documentation]     Add-to-cart-from-homepage-remove-from-Cart-page-performance_glitch_user
        open login page
        sign in with performance_glitch_user
        Add to cart from homepage
        check cart
        sleep   2s
        remove from cart