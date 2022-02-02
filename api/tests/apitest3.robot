*** Settings ***
Library    RequestsLibrary
Library    JSONLibrary
Library    Collections
Resource    ../resource/generic/common.robot
Resource    ../resource/config/setup.robot

*** Test Cases ***
Exutute Api test POST method
    [Documentation]    Execute the api test
    [Tags]    smoke_api
    Given I generate the following body whit 4 parameter    id  1  title  demo  body  demo  userId  2
    When I run the service with the following endpoint with POST method    jsonplaceholder  ${ENDPOINT_POST}  ${BODY}
    Then I verify the code status is equeals  201   ${RESPONSE}

Exutute Api test GET method
    [Documentation]    Execute the api test
    [Tags]    smoke_api
    Given I run the service with the following endpoint with GET method    jsonplaceholder  ${ENDPOINT_POST}
    Then I verify the code status is equeals  200   ${RESPONSE}
    And I verify that the response contains key  title   ${RESPONSE}
    And I verify that the response contains key    body  ${RESPONSE}
    And I verify that the response contains value   ${RESPONSE}   $[*].userId   1


