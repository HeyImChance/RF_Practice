*** Settings ***
Documentation     This is a resource file, that can contain variables and keywords.
...               Keywords defined here can be used where this Keywords.resource in loaded.

*** Keywords ***

Login to RHSM Web
    [Arguments]    ${user}    ${password}    ${url}
    Open Browser    ${url}    Chrome
    Wait Until Element Is Visible    id:username-verification
    Input Text    id:username-verification    ${user}
    Click Element    id:login-show-step2
    Wait Until Element Is Visible    id:password
    Input Text    id:password    ${password}
    Click Element    id:rh-password-verification-submit-button

Check Sub Details
    [Tags]    subscriptions    foo
    Wait Until Element Is Visible    xpath=//*[@id="subscriptions_inventory_table"]/tbody/tr[1]/td[1]/a
    Click Link    xpath=//*[@id="subscriptions_inventory_table"]/tbody/tr[1]/td[1]/a

