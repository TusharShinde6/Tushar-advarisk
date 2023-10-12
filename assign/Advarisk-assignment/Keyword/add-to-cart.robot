*** Settings ***
Resource       Keywords.robot



*** Keywords ***

Add to cart from Product page
        click element    //*[@id="item_4_title_link"]
        Click Button        add-to-cart-sauce-labs-backpack
        Sleep       1s

Add to cart from homepage
        Click Button        add-to-cart-sauce-labs-backpack
        Sleep       1s

Multiple add to cart from homepage
        Click Button        add-to-cart-sauce-labs-backpack
        Click Button        add-to-cart-sauce-labs-bike-light

open product
        Click Element        //*[@id="item_4_title_link"]

