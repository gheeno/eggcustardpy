*** Settings ***
Library         SeleniumLibrary

*** Test Cases ***
Sample Webdriver
        [Documentation]    Sample Test - to open browser using WebDriverManager
        [Tags]  WebDriverManager
        Open Browser    http://google.com       chrome
        close all browsers