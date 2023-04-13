*** Settings ***
Documentation   Sample Script
Library         SeleniumLibrary
Library         Dialogs
Resource        ../Resources/PageSteps/CommonSteps.robot


#Run the script:
#python -m robot -d Results .\Tests\*.robot
*** Variables ***


*** Test Cases ***
Sample Webdriver
    [Documentation]         Sample Test - to open browser using WebDriverManager
    [Tags]                  WebDriverManager    Smoke

    [CommonSteps] Initialize Selenium
    [CommonSteps] Open Browser and Navigate To Url
    [CommonSteps] Set Browser Size and Position

    page should contain     Customers Are Priority

    # click link              Sign In
    click element           //a[@id='SignIn']
    page should contain     Login

    # Login
    input text              (//input[@class='form-control'])[1]     gino.sanpascual@testing.com
    input text              (//input[@class='form-control'])[2]     password1234
    click button            id=submit-id
    page should contain     Happy Customers

    # Create new customer
    click link              New Customer
    page should contain     Add Customer

    input text              id=EmailAddress     sampleuser@test.com:
    input text              id=FirstName        Gheeno
    input text              id=LastName         Doe
    input text              id=City             Dallas
    select from list by label    id=StateOrRegion   Texas
    select radio button     gender      male
    click button            //button[@type="submit"]
    #click button            submit


    sleep                   3s
    log                     close browser
    close browser


*** Keywords ***
