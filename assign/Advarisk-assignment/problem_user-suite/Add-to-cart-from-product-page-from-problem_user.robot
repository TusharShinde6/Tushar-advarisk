*** Settings ***

Resource            ${CURDIR}/../Keyword/Keywords.robot
Resource            ${CURDIR}/../Keyword/add-to-cart.robot
Test Setup    Open Browser   browser=Chrome
Test Teardown    Close Browser
*** Test Cases ***
Add-to-cart-from-product-page-from-problem_user
   [Documentation]     Add-to-cart-from-product-page-from-problem_user
    open login page
    sign in    problem_user
    Add to cart from Product page
    check cart
    Product checkout
    Enter Delivery details
    finish button
    Back to homepage
    Close All Browsers
