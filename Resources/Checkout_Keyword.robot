*** Settings ***
Documentation           Login releted keyword
Variables               Locator.yaml


*** Keywords ***
User is on the product page
    [Documentation]                Keyword to verify product page section appears
    Wait Until Element Contains    ${productPage}    Products
    Element Text Should Be         ${productPage}    Products 
    Element Should Be Visible      ${productSouceLabsBackpackcarry}  

User selects a product
    [Documentation]                Keyword to selects a product
    Click Element                  ${productNameSauceLabsBackpack}

User clicks the Add to Cart button
    [Documentation]                Keyword to clicks the Add to Cart button
    Click Element                  ${buttonAddToCart}

The product should be added to the cart
    [Documentation]                Keyword to the product should be added to the cart
    Click Element                  ${iconShoppingCart}
    Wait Until Element Contains    ${item_name}    Sauce Labs Backpack
    Element Text Should Be         ${item_name}    Sauce Labs Backpack 

User clicks the icon Shopping Cart
    [Documentation]                Keyword to the clicks the icon Shopping Cart
    Click Element                  ${iconShoppingCart}

User clicks the Checkout button
    [Documentation]                Keyword to clicks the Add to Cart button
    Click Element                  ${checkoutButton}

User input first name
    [Documentation]                Keyword to input first name
    [Arguments]                    ${FirstName}
    Element Should Be Visible      ${inputFirstName} 
    Click Element                  ${inputFirstName}
    Input Text                     ${inputFirstName}    ${FirstName}

User input last name
    [Documentation]                Keyword to input last name
    [Arguments]                    ${LastName}
    Click Element                  ${inputLastName}
    Input Text                     ${inputLastName}    ${LastName}

User input postal code
    [Documentation]                Keyword to input postal code
    [Arguments]                    ${PostalCode}
    Input Text                     ${inputPostalCode}    ${PostalCode}

User clicks the Continue button
    [Documentation]                Keyword to clicks the continue button
    Click Element                  ${buttonContinue}


User clicks the Finish button
    [Documentation]                Keyword to clicks the finish button
    Click Element                  ${buttonFinish}

User successfully order the product
    [Documentation]                Keyword to verify product page section appears
    Wait Until Element Contains    ${complateHeader}    Thank you for your order!
    Element Text Should Be         ${complateHeader}    Thank you for your order! 

User clicks the Back Home button
    [Documentation]                Keyword to the Back Home button
    Click Element                  ${buttonBackHome}




