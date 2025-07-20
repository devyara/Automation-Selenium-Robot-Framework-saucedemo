*** Settings ***
Documentation                       Login 
Library                             SeleniumLibrary
Resource                            ../Resources/Base.robot
Resource                            ../Resources/Login_Keyword.robot
Resource                            ../Resources/Checkout_Keyword.robot
Suite Setup                         Base.Open Firefox Browser
Suite Teardown                      Close Browser

*** Variables ***
${FirstName}                 Devy
${LastName}                  Anugrah
${PostalCode}                123456

*** Test Cases ***
User successfully add the produt to cart 
    [Documentation]                             The product should be added to the cart 
    Do Login
    User is on the product page
    User selects a product
    User clicks the Add to Cart button
    User clicks the icon Shopping Cart
    User clicks the Checkout button
    User input first name                       ${FirstName}
    User input last name                        ${LastName}     
    User input postal code                      ${PostalCode} 
    User clicks the Continue button
    User clicks the Finish button
    User successfully order the product
    User clicks the Back Home button    

