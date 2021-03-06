*** Settings ***
Documentation  Ftr.com Automation
Library  Selenium2Library  30

Resource  ../../../Resources/KW/HomePage/TabSelections/009_CC_.COM_ENGLISH_NSS_Res_TS_MyAccount_MyBills_KW.robot
Resource  ../../../Resources/PO/Common.robot

Test Setup  Begin Web Test
Test Teardown  Common.End Web Test

*** Test Cases ***

009_CC_.COM_ENGLISH_NSS_Res_TS_MyAccount_MyBills

    User launch Ftr.com application using URL

    Click on the Tab selections as follows: My Account> My Bills

    Verify Sign In Screen displays fields and buttons