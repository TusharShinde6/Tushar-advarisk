*** Settings ***
Resource            ${CURDIR}/../Keyword/Keywords.robot
Resource            ${CURDIR}/../Keyword/add-to-cart.robot
Test Setup    Open Browser   browser=Chrome
Test Teardown    Close Browser




*** Test Cases ***
Return-to-homepage-from-cartpage-continue-shop
        [Documentation]     Return-to-homepage-from-cartpage-continue-shop
        sign in by standard_user
        Add to cart from homepage
        check cart
        sleep   2s
        continue shopping

