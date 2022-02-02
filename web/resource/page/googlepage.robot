*** Settings ***
Library    SeleniumLibrary
Resource    ../locators/googlelocators.robot

*** Keywords ***
I wait for the google page is loaded
    [Arguments]    ${TEXT_LOAD}
    wait until page contains    ${TEXT_LOAD}

I perform to search with the Globant text
    [Arguments]    ${TEXT_SEARCH}
    input text    ${SEARCH_TEXBOX}    ${TEXT_SEARCH}
    press keys    ${SEARCH_TEXBOX}    ENTER

I verify that the search was successful
    [Arguments]    ${TEXT_RESULT}
    title should be    ${TEXT_RESULT}