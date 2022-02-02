*** Settings ***
Documentation    Search Google Page
Resource    ../resource/page/common.robot
Resource    ../resource/page/googlepage.robot
Resource    ../resource/configbs/browserstackconfig.robot
Library    SeleniumLibrary
Test Setup    I go to page in browserstack
Test Teardown    I close browser

*** Variables ***
${TEXT_SEARCH}  Globant
${TEXT_RESULT}  Globant - Google Search
*** Test Cases ***
Search google page in browserstack
    [Documentation]    Search google page in browserstack
    [Tags]    regression
    When I perform to search with the Globant text  ${TEXT_SEARCH}
    Then I verify that the search was successful    ${TEXT_RESULT}