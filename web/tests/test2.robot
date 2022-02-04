*** Settings ***
Documentation    Search Google Page 2
Library    SeleniumLibrary
Resource    ../resource/page/common.robot
Resource    ../resource/page/googlepage.robot
Test Setup    I go to google page
Test Teardown    I close browser

*** Variables ***
${TEXT_LOAD}  Google
${TEXT_SEARCH}  Globant
${TEXT_RESULT}  Globant - Buscar con Google

*** Test Cases ***
Search google page
    [Documentation]    Search google page 2
    [Tags]    smoke
    Given I wait for the google page is loaded  ${TEXT_LOAD}
    When I perform to search with the Globant text  ${TEXT_SEARCH}
    Then I verify that the search was successful  ${TEXT_RESULT}
