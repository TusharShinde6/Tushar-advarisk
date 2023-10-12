*** Settings ***
Resource            ${CURDIR}/../Keyword/Keywords.robot
Resource            ${CURDIR}/../Keyword/add-to-cart.robot
Test Setup    Open Browser   browser=Chrome
Test Teardown    Close Browser

*** Test Cases ***
cancel-from-checkout-page
    [Documentation]         cancel-from-checkout-page
    open login page
    sign in by standard_user
    Add to cart from Product page
    check cart
    Product checkout
    Enter Delivery details
    cancel button