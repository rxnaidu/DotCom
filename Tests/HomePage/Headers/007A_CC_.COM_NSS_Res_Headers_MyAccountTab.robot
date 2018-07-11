*** Settings ***
Documentation  Ftr.com Automation
Library  Selenium2Library  30
Resource  ../../../Resources/KW/HomePage/Headers/07_MyAccountTab_KW.robot
Resource  ../../../Resources/PO/Common.robot

Test Setup  Begin Web Test
Test Teardown  Common.End Web Test

*** Test Cases ***

007_CC_.COM_ENGLISH_NSS_Res_Headers_MyAccountTab

    User launch Ftr.com application using URL

    User mouse over on My Account Tab

    Verify all subtabs are displayed under My Account Tab