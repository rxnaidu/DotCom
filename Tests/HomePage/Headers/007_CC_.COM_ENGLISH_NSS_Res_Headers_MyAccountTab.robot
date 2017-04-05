*** Settings ***
Documentation  Ftr.com Automation
Library  Selenium2Library  60
Resource  ../../../Resources/KW/HomePage/Headers/07_MyAccountTab_KW.robot
Resource  ../../../Resources/PO/Common/common.robot

Test Setup  Common.Begin Web Test
Test Teardown  Common.End Web Test

*** Variables ***

*** Test Cases ***

06_shopTab

    User launch Ftr.com application using URL

    User mouse over on My Account Tab

    Verify all subtabs are displayed under My Account Tab