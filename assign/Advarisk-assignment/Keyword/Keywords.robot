*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem


*** Variables ***
${URL}                   https://www.saucedemo.com/
${Browser}               Chrome
${chromedriver}          executable_path=/usr/local/bin/chromedriver
${username}              //*[@id="user-name"]
${password}              //*[@id="password"]
${cart_button}           //*[@id="shopping_cart_container"]
${firstname}             //*[@id="password"]
${all_items}             //*[@id="inventory_sidebar_link"]
${validation_error}      //*[@class="error-message-container error"]

*** Keywords ***
open login page
        Open Browser    ${URL}    ${Browser}  ${chromedriver}

sign in by standard_user
        open login page
        input text      ${username}    standard_user
        input text      ${password}    secret_sauce
        Click Button    login-button

sign in with invalid username
        input text      ${username}    standard
        input text      ${password}    secret_sauce
        Click Button    login-button
        Wait Until Element Is Enabled    ${validation_error}
        Capture Page Screenshot

sign in with invalid password
        input text      ${username}    standard_user
        input text      ${password}    secret
        Click Button    login-button
        Wait Until Element Is Enabled    ${validation_error}
        Capture Page Screenshot
sign in with locked user
        input text      ${username}    locked_out_user
        input text      ${password}    secret_sauce
        Click Button    login-button
        Wait Until Element Is Enabled    ${validation_error}
        Capture Page Screenshot
sign in with problem user
        input text      ${username}    problem_user
        input text      ${password}    secret_sauce
        Click Button    login-button

sign in with performance_glitch_user
        input text      ${username}    performance_glitch_user
        input text      ${password}    secret_sauce
        Click Button    login-button

sign in with error_user
        input text      ${username}    error_user
        input text      ${password}    secret_sauce
        Click Button    login-button

Product checkout
        Click Button   checkout

finish button
        Click Button     finish

Enter Delivery details
        Input Text       firstName         Demo
        Input Text       lastName          assignment
        Input Text       postalCode         4000011
        Click Button     continue
        Sleep    2s

Back to homepage
        Click Button    back-to-products

check cart
    Click Element     ${cart_button}

remove from cart
        Click Button        Remove

continue shopping
        Click Button        continue-shopping
sort
    [Arguments]  ${value}
        Click Element       //*[@class="select_container"]
        Select From List By Value     //*[@class="product_sort_container"]      ${value}

sorting-name-Z-to-A
        sleep   1s
        sort        za
        sleep       2s
sorting-name-A-to-Z
        sort        az
        Sleep       2s
Sort Price Low-high
        sort        lohi
        sleep       2s
Sort Price high-low
        sort        hilo
        Sleep       2s

option menu
        Click Button    Open Menu
        Wait Until Element Is Enabled    ${all_items}
        Sleep           2s
        Click Element    ${all_items}

about page
        Click Button    Open Menu
        Wait Until Element Is Enabled    ${all_items}
        Click Element    //*[@id="about_sidebar_link"]

Logout
        Click Button    Open Menu
        Wait Until Element Is Enabled    ${all_items}
        Click Element    //*[@id="logout_sidebar_link"]

twitter
        Scroll Element Into View    //*[@class="social_twitter"]
        Click Element    //*[@class="social_twitter"]

facebook
        Scroll Element Into View    //*[@class="social"]
        Click Element    //*[@class="social_facebook"]

 linkedin
        Scroll Element Into View    //*[@class="social"]
        Click Element    //*[@class="social_linkedin"]
        
 cancel button
        Click Button    cancel

 Enter Delivery details without firstname
        Input Text       lastName          assignment
        Input Text       postalCode         4000011
        Click Button     continue
        Sleep    2s
        Wait Until Element Is Enabled    ${validation_error}
        Log         Error: First Name is required
        Capture Page Screenshot
        sleep       2s
  
 Enter Delivery details without lastname
        Input Text       firstName         Demo
        Input Text       postalCode         4000011
        Click Button     continue
        Sleep    2s
        Wait Until Element Is Enabled    ${validation_error}
        Log         Error: Last Name is required
        Capture Page Screenshot
        Sleep      2s
        
 Enter Delivery details without postalcode
        Input Text       firstName         Demo
        Input Text       lastName          assignment
        Click Button     continue
        Sleep    2s
        Wait Until Element Is Enabled    ${validation_error}
        Log         Error: Postal Code is required
        Capture Page Screenshot
        Sleep    2s