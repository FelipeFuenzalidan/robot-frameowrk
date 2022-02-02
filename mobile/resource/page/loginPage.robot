*** Settings ***
Library    AppiumLibrary
Resource    ../locators/login.robot

*** Keywords ***
I type the email
    [Arguments]    ${EMAIL_TEXT}
    wait until element is visible    ${EMAIL_TEXTBOX}
    input text    ${EMAIL_TEXTBOX}   ${EMAIL_TEXT}

I type the password
    [Arguments]    ${PASSWORD_TEXT}
    wait until element is visible    ${PASSWORD_TEXTBOX}
    input text    ${PASSWORD_TEXTBOX}   ${PASSWORD_TEXT}

I tap in login button
    wait until element is visible   ${LOGIN_BUTTON}
    click element    ${LOGIN_BUTTON}

I verify that the login successful
    wait until element is visible    ${LOGIN_SUCCESS}
    element should be visible   ${LOGIN_SUCCESS}