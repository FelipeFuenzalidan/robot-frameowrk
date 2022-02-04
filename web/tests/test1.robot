*** Settings ***
Library    SeleniumLibrary

Documentation    Search Google Page 1

Suite Setup    log to console    antes del feature
Test Setup    log to console    antes del test
Test Teardown    log to console    después del test
Suite Teardown    log to console    después del feature

*** Variables ***
${SEARCH_TEXT}  Globant
${SEARCH_RESULTS}   Globant - Buscar con Google


*** Test Cases ***
Search google page 1
    [Documentation]    Search google page 1
    [Tags]    regression
    open browser    https://www.google.com  chrome
    maximize browser window
    wait until page contains    Google
    input text    name=q    ${SEARCH_TEXT}
    press keys    name=q    ENTER
    title should be    ${SEARCH_RESULTS}
    close browser
