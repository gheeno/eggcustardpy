*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
[CommonSteps] Initialize Selenium
    set selenium speed      .2s
    set selenium timeout    10s

[CommonSteps] Open Browser and Navigate To Url
    log                     Open browser
    Open Browser            https://automationplayground.com/crm       chrome

[CommonSteps] Set Browser Size and Position
    log                     Window Resize and Reposition
    set window position     x=1    y=1
    set window size         width=1920   height=1080


