*** Settings ***
Library    RequestsLibrary
Library    JSONLibrary
Library    Collections
Resource    ../config/setup.robot

*** Keywords ***
I run the service with the following endpoint with GET method
    [Arguments]    ${SERVICE_NAME}      ${ENDPOINT_NAME}
    Create Session    ${SERVICE_NAME}   ${URL_BASE}     headers=${HEADERS}  verify=True
    ${RESPONSE} =   GET On Session    ${SERVICE_NAME}   ${ENDPOINT_NAME}
    set global variable    ${RESPONSE}

I verify the code status is equeals
    [Arguments]    ${STATUS_CODE}   ${RESPONSE}
    status should be    ${STATUS_CODE}  ${RESPONSE}

I verify that the response contains key
    [Arguments]    ${KEY_NAME}  ${RESPONSE}
    ${OBJECT} =  Get From List  ${RESPONSE.json()}  0
    ${KEYS} =  Get Dictionary Keys  ${OBJECT}
    Dictionary Should Contain Key    ${KEYS}    ${KEY_NAME}

I verify that the response contains value
    [Arguments]    ${RESPONSE}   ${JSON_PATH}   ${RESPONSE_VALUE}
    @{data_list}  get value from json    ${RESPONSE.json()}   ${JSON_PATH}
    ${data_first} =    get from list    ${data_list}  0
    should be equal as strings    ${data_first}   ${RESPONSE_VALUE}

I generate the following body whit 1 parameter
    [Arguments]    ${KEY_BODY}   ${VALUE_BODY}
    &{BODY} =   create dictionary    ${KEY_BODY}=${VALUE_BODY}
    set global variable    ${BODY}

I generate the following body whit 2 parameter
    [Arguments]    ${KEY_BODY}   ${VALUE_BODY}
    &{BODY} =   create dictionary    ${KEY_BODY}=${VALUE_BODY}  ${KEY_BODY}=${VALUE_BODY}
    set global variable    ${BODY}

I generate the following body whit 3 parameter
    [Arguments]    ${KEY_BODY}   ${VALUE_BODY}
    &{BODY} =   create dictionary    ${KEY_BODY}=${VALUE_BODY}  ${KEY_BODY}=${VALUE_BODY}  ${KEY_BODY}=${VALUE_BODY}
    set global variable    ${BODY}

I generate the following body whit 4 parameter
    [Arguments]    ${KEY_BODY_1}   ${VALUE_BODY_1}  ${KEY_BODY_2}   ${VALUE_BODY_2}  ${KEY_BODY_3}   ${VALUE_BODY_3}  ${KEY_BODY_4}   ${VALUE_BODY_4}
    &{BODY} =   create dictionary    ${KEY_BODY_1}=${VALUE_BODY_1}  ${KEY_BODY_2}=${VALUE_BODY_2}  ${KEY_BODY_3}=${VALUE_BODY_3}  ${KEY_BODY_4}=${VALUE_BODY_4}
    set global variable    ${BODY}

I run the service with the following endpoint with POST method
    [Arguments]    ${SERVICE_NAME}      ${ENDPOINT_NAME}    ${BODY}
    Create Session    ${SERVICE_NAME}   ${URL_BASE}     headers=${HEADERS}  verify=True
    ${RESPONSE} =   POST On Session     ${SERVICE_NAME}   ${ENDPOINT_NAME}  json=${BODY}
    set global variable    ${RESPONSE}
