*** Settings ***
Library  Selenium2Library  60

*** Variables ***


*** Keywords ***

Verify Wholesale home Page
    wait until page contains  Frontier Wholesale
    sleep  2s

    page should contain  Operations
    page should contain  Customers
    page should contain  Products
    page should contain  Network
