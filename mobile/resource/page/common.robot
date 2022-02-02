*** Settings ***
Library    AppiumLibrary
Resource    ../capabilities/android.robot
Resource    ../capabilities/ios.robot
Resource    ../capabilities/bs-android.robot

*** Variables ***
${PLATFORM}   android

*** Keywords ***
I launch the app
    IF    '${PLATFORM}' == 'android'
        open application    ${REMOTE_URL_ANDROID}    platformName=${PLATFORM_NAME_ANDROID}    platformVersion=${PLATFORM_VERSION_ANDROID}
        ...   deviceName=${DEVICE_NAME_ANDROID}    app=${APP_ANDROID}
        ...   appPackage=${APP_PACKAGE_ANDROID}   appActivity=${APP_ACTIVITY_ANDROID}
    ELSE IF    '${PLATFORM}' == 'ios'
        open application    ${REMOTE_URL_IOS}    platformName=${PLATFORM_NAME_IOS}    platformVersion=${PLATFORM_VERSION_IOS}
        ...   deviceName=${DEVICE_NAME_IOS}    app=${APP_IOS}   automationName=${AUTOMATION_NAME_IOS}   udid=${UDID_IOS}
    ELSE IF    '${PLATFORM}' == 'bs-android'
        open application    ${BS_REMOTE_URL_ANDROID}    platformName=${BS_PLATFORM_NAME_ANDROID}    platformVersion=${BS_PLATFORM_VERSION_ANDROID}
        ...   deviceName=${BS_DEVICE_NAME_ANDROID}    app=${BS_APP_ANDROID}
    ELSE
        fatal error    The platform doesn't exist.
    END

I close the app
    close application