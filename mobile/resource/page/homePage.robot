*** Settings ***
Library    AppiumLibrary
Resource    ../locators/home.robot

*** Keywords ***
I verify the home screen is displayed
    wait until element is visible    ${HOME_SCREEN}
    element should be visible    ${HOME_SCREEN}

I tap in login menu
    click element    ${LOGIN_MENU}