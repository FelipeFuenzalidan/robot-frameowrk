*** Settings ***
Library    AppiumLibrary


*** Variables ***
${REMOTE_URL}    http://localhost:4723/wd/hub
${PLATFORM_NAME}    Android
${PLATFORM_VERSION}    11.0
${DEVICE_NAME}    demo-robot
${ACTIVITY_NAME}    com.android.calculator2.Calculator
${PACKAGE_NAME}     com.android.calculator

*** Test Cases ***
First Test cases
    open application    ${REMOTE_URL}    platformName=${PLATFORM_NAME}    platformVersion=${PLATFORM_VERSION}
    ...   deviceName=${DEVICE_NAME}    app=${CURDIR}/calculator.apk
    click element   xpath=//android.widget.Button[contains(@text,'6')]
    wait activity   com.android.calculator2.Calculator   30   2
    click element   xpath=//android.widget.Button[contains(@text,'+')]
    click element   xpath=//android.widget.Button[contains(@text,'4')]
    click element   xpath=//android.widget.Button[contains(@text,'=')]
    close application

