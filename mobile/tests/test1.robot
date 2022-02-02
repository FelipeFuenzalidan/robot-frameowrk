*** Settings ***
Resource    ../resource/page/common.robot
Resource    ../resource/page/homePage.robot
Resource    ../resource/page/loginPage.robot
Test Setup  I launch the app
Test Teardown   I close the app

*** Test Cases ***
Demo mobile automation test
    Given I verify the home screen is displayed
    When I tap in login menu
    And I type the email    felipe.fuenzalida@globant.com
    And I type the password    Globant2022
    And I tap in login button
    Then I verify that the login successful