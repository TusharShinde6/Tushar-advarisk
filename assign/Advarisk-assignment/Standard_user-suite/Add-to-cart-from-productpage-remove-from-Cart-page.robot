*** Settings ***
Resource            ${CURDIR}/../Keyword/Keywords.robot
Resource            ${CURDIR}/../Keyword/add-to-cart.robot
Test Setup    Open Browser   browser=Chrome
Test Teardown    Close Browser




*** Test Cases ***
Add-to-cart-from-productpage-remove-from-Cart-page
        [Documentation]     Add-to-cart-from-productpage-remove-from-Cart-page
        sign in    standard_user
        Add to cart from Product page
        check cart
        sleep   2s
        remove from cart