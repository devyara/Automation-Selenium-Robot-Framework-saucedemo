*** Settings ***
Documentation                       Login 
Library                             SeleniumLibrary
Resource                            ../Resources/Base.robot
Resource                            ../Resources/Login_Keyword.robot
Resource                            ../Resources/Checkout_Keyword.robot
Suite Setup                         Base.Open Firefox Browser
Suite Teardown                      Close Browser

*** Variables ***
${UsernameLogin}                 standard_user
${PasswordLogin}                 secret_sauce

*** Test Cases ***

User successfully add the produt to cart 
    [Documentation]                             The product should be added to the cart 
    Do Login
    User is on the product page
    User selects a product
    User clicks the Add to Cart button
    The product should be added to the cart

