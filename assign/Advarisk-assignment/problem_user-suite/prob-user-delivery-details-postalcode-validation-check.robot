*** Settings ***
Resource            ${CURDIR}/../Keyword/Keywords.robot
Resource            ${CURDIR}/../Keyword/add-to-cart.robot
Test Setup    Open Browser   browser=Chrome
Test Teardown    Close Browser

*** Test Cases ***
delivery-details-postalcode-validation-check
    [Documentation]         delivery-details-postalcode-validation-check
    open login page
    sign in with problem user
    Add to cart from Product page
    check cart
    Product checkout
    Enter Delivery details without postalcode
