*** Settings ***
Library    RequestsLibrary
Library    JSONLibrary
Library    Collections
Resource    ../resource/generic/common.robot
Resource    ../resource/config/setup.robot

*** Test Cases ***
Exutute Api test
    [Documentation]    Execute the api test
    [Tags]    Smoke
    Given I run the service with the following endpoint with GET method   jhetestingworldapi     ${ENDPOINT_POST}
    Then I verify the code status is equeals    200   ${RESPONSE}
    And I verify that the response contains key  status  ${RESPONSE}
    And I verify that the response contains key    data  ${RESPONSE}
    And I verify that the response contains value   ${RESPONSE}   data.first_name   Teku
