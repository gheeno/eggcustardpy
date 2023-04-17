*** Settings ***
Library                         SeleniumLibrary

*** Keywords ***
Inserting Test Data
    log                         Suite Setup Example.
    log                         Suite setup will run before ALL your test cases.

Clean up Tets Data
    log                         Suite Teardown Example.
    log                         Suite Teardown will run after ALL your testcases

Initialize Webtest
    [Documentation]             Sets selenium speed, opens a browser, and then resize.
    Set Selenium time
    #make this variable in the future.
    open browser                about:blank    chrome
    Set Browser Size and Position

Terminate Webtest
    close browser

Set Browser Size and Position
    log                         Window Resize and Reposition
    set window position         x=1    y=1
    set window size             width=1920   height=1080

Set Selenium time
    set selenium speed          .2s
    set selenium timeout        10s


