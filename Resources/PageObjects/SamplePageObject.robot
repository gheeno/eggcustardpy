*** Settings ***
Documentation   pageObject Model for robotframework is to have the pageActions with the Object.
Library         SeleniumLibrary

*** Keywords ***
### UsernameTextBox
#Enter userName
    #input text   (//input[@class='form-control'])[1]    makeThisAVariable

User Opens the sample CRM page.
    Go to                   https://automationplayground.com/crm

User verifies that `Customer Are Priority` text is on the page.
    page should contain     Customers Are Priority

User clicks the signin button and verifies that the page loaded.
    Click Signin Button
    Page Should Contain Text : `Login`

User logs in to the CRM page, and verifies that the page contains `Happy Customers`.
    Send Text to UserNameTextBox
    Send Text to PasswordTextBox
    Click Login Submit Button
    Page Should contain Text : `Happy Customers`

User creates a new user with hardcoded values.
    click link              New Customer
    page should contain     Add Customer
    input text              id=EmailAddress     sampleuser@test.com:
    input text              id=FirstName        Gheeno
    input text              id=LastName         Doe
    input text              id=City             Dallas
    select from list by label    id=StateOrRegion   Texas
    select radio button     gender      male
    click button            //button[@type="submit"]

Click Signin Button
    click element           //a[@id='SignIn']

Page Should Contain Text : `Login`
    page should contain     Login

Page Should contain Text : `Happy Customers`
    page should contain     Happy Customers

Send Text to UserNameTextBox
    input text              (//input[@class='form-control'])[1]     gino.sanpascual@testing.com

Send Text to PasswordTextBox
    input text              (//input[@class='form-control'])[2]     password1234

Click Login Submit Button
    click button            id=submit-id
