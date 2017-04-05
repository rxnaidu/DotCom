*** Settings ***
Documentation  Ftr.com Automation
Library  Selenium2Library  60
Resource  ../../../Resources/KW/HomePage/Headers/05_WholeSaleTab_KW.robot
Resource  ../../../Resources/PO/Common/common.robot

Test Setup  Common.Begin Web Test
Test Teardown  Common.End Web Test

*** Variables ***

*** Test Cases ***

04_BusinessTab

    User launch Ftr.com application using URL

    User clicks Wholesale Tab

    Verify Wholesale home page is displayed

    User clicks back button

    Verify Residential Home Page is displayed