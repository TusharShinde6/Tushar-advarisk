*** Settings ***
Resource            ${CURDIR}/../Keyword/Keywords.robot
Resource            ${CURDIR}/../Keyword/add-to-cart.robot
Test Setup    Open Browser   browser=Chrome
Test Teardown    Close Browser




*** Test Cases ***
Add-to-cart-from-productpage-remove-from-homepage-performance_glitch_user
        [Documentation]     Add-to-cart-from-productpage-remove-from-homepage-performance_glitch_user
        open login page
        sign in    performance_glitch_user
        Add to cart from Product page
        Back to homepage
        sleep   2s
        remove from cart