*** Settings ***
Documentation  Ftr.com Automation
Library  Selenium2Library  30

Resource  ../../../Resources/KW/HomePage/TabSelections/006_CC_.COM_ENGLISH_NSS_Res_TS_Shop_Moving_KW.robot
Resource  ../../../Resources/PO/Common.robot

Test Setup  Begin Web Test
Test Teardown  Common.End Web Test

*** Test Cases ***

006_CC_.COM_ENGLISH_NSS_Res_TS_Shop_Moving

    User launch Ftr.com application using URL

    Click on the Tab selections as follows: Shop > Moving

    Verify URL changes to Moving page