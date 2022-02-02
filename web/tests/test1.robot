*** Settings ***
Documentation    Search Google Page 1
Library    SeleniumLibrary

*** Test Cases ***
Search google page
    [Documentation]    Search google page 1
    [Tags]    regression
    open browser    https://www.google.com  chrome
    maximize browser window
    wait until page contains    Google
    input text    name=q    Globant
    press keys    name=q    ENTER
    title should be    Globant - Buscar con Google
    close browser
