*** Settings ***
Library    RequestsLibrary
Library    JSONLibrary
Library    Collections

*** Variables ***
${URL_BASE}     http://thetestingworldapi.com/
${ENDPOINT}     api/studentsDetails/546339
&{HEADERS}      Content-Type=application/json

*** Test Cases ***
Exutute Api test
    Create Session   thetestingworldapi     ${URL_BASE}     headers=${HEADERS}
    ${RESPONSE} =   GET On Session    thetestingworldapi   ${ENDPOINT}
    status should be    200  ${RESPONSE}
    Dictionary Should Contain Key    ${RESPONSE.json()}  status
    Dictionary Should Contain Key    ${RESPONSE.json()}  data
    @{first_name_data}  get value from json    ${RESPONSE.json()}   data.first_name
    ${first_name} =    get from list    ${first_name_data}  0
    should be equal as strings    ${first_name}   Teku
    log to console    ../${CURDIR}
