*** Settings ***
Suite Setup    log to console    antes del feature
Test Setup    log to console    antes del test
Test Teardown    log to console    después del test
Suite Teardown    log to console    después del feature