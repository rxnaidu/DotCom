*** Settings ***
Documentation  Ftr.com Automation
Library  Selenium2Library  60
Resource  ../../../Resources/KW/HomePage/Headers/04_BusinessTab_KW.robot
Resource  ../../../Resources/PO/Common/common.robot

Test Teardown  Common.End Web Test

*** Test Cases ***

04_BusinessTab

    User launch Ftr.com application using URL

    User clicks Business Tab

    Verify Business home page is displayed

    User clicks back button

    Verify Residential Home Page is displayed

