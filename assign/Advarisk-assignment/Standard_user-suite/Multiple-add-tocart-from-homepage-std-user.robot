*** Settings ***
Resource            ${CURDIR}/../Keyword/Keywords.robot
Resource            ${CURDIR}/../Keyword/add-to-cart.robot

*** Test Cases ***

Multiple-add-tocart-from-homepage-std-user
    [Documentation]     Multiple-add-tocart-from-homepage-std-user
    open login page
    sign in by standard_user
    Add to cart from Product page
    check cart
    Product checkout
    Enter Delivery details
    finish button
    Back to homepage
    Close All Browsers
