*** Settings ***
Documentation                       Login 
Library                             SeleniumLibrary
Resource                            ../Resources/Base.robot
Resource                            ../Resources/Login_Keyword.robot
Suite Setup                         Base.Open Firefox Browser
Suite Teardown                      Close Browser

*** Test Cases ***
User successfully logged in
    [Documentation]                 User successfully logged in
    Do Login


