*** Settings ***
Library    SeleniumLibrary

*** Keywords ***

### UsernameTextBox
Enter userName
    input text   (//input[@class='form-control'])[1]    makeThisAVariable