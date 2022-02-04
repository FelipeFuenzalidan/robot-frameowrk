*** Settings ***
Library    SeleniumLibrary

Documentation    Search Google Page 1

Suite Setup    log to console    antes del feature
Test Setup    log to console    antes del test
Test Teardown    log to console    después del test
Suite Teardown    log to console    después del feature

*** Variables ***
${SEARCH_TEXT}  Globant


*** Test Cases ***
Search google page
    [Documentation]    Search google page 1
    [Tags]    regression
    open browser    https://www.google.com  chrome
    maximize browser window
    wait until page contains    Google
    input text    name=q    ${SEARCH_TEXT}
    press keys    name=q    ENTER
    title should be    Globant - Buscar con Google
    close browser
