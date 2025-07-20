*** Settings ***
Documentation           Login releted keyword
Variables               Locator.yaml

*** Variables ***
${UsernameLogin}                 standard_user
${PasswordLogin}                 secret_sauce

*** Keywords ***
Do Login
    [Documentation]                 User successfully logged in
    Verify Login section appears
    Click username                  
    Input username          ${UsernameLogin}  
    Click password
    Input password          ${PasswordLogin}   
    Click login button  

Verify Login section appears
    [Documentation]                     Keyword to verify Login section appears
    Wait Until Element Is Visible       ${logo}
    Element Should Be Visible           ${buttonLogin}

Click username
    [Documentation]                     Keyword to click username field
    Click Element                       ${username}

Input username
    [Documentation]                     Input username field
    [Arguments]                         ${UsernameLogin}
    Input Text                          ${username}    ${UsernameLogin}
    Press Keys                          None           ENTER

Click password
    [Documentation]                     Keyword to click password field
    Click Element                       ${password}

Input password
    [Documentation]                     Input password field
    [Arguments]                         ${PasswordLogin}
    Input Text                          ${password}    ${PasswordLogin}
    Press Keys                          None           ENTER

Click login button
    [Documentation]                     Click login button
    Click Element                       ${buttonLogin}
