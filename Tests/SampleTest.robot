*** Settings ***
Documentation       [Feature] Sample CRM system.
Library             SeleniumLibrary
Library             Dialogs
Resource            ../Resources/PageSteps/CommonSteps.robot
Resource            ../Resources/PageSteps/CommonSteps.robot
Resource            ../Resources/PageObjects/SamplePageObject.robot
Suite Setup         Inserting Test Data
Test Setup          Initialize Webtest
Test Teardown       Terminate Webtest
Suite Teardown      Clean up Tets Data

*** Variables ***
${START_URL} =  https://automationplayground.com/crm
${BROWSER} =    chrome

*** Test Cases ***
Create a new user in the CRM System.
    [Documentation]         [Scenario] As a user, I can create new users for the CRM system.
    [Tags]                  WebDriverManager    Smoke
    Given SamplePageObject.User Opens the sample CRM page.
    And user verifies that `Customer Are Priority` text is on the page.
    And user clicks the signin button and verifies that the page loaded.
    And user logs in to the CRM page, and verifies that the page contains `Happy Customers`.
    Then user creates a new user with hardcoded values.




