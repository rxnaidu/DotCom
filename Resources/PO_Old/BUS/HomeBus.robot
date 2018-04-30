*** Settings ***
Library  Selenium2Library  60

*** Variables ***


*** Keywords ***

Verify Business home Page
    wait until page contains  Products
    sleep  2s

    page should contain  Solutions
    page should contain  Resources
    page should contain  Support

