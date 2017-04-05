*** Settings ***
Documentation  Ftr.com Automation
Library  Selenium2Library  30

Resource  ../../../Resources/KW/HomePage/TabSelections/007_CC_.COM_ENGLISH_NSS_Res_TS_MyAccount_AccountSummary_KW.robot
Resource  ../../../Resources/PO/Common/common.robot

Test Setup  Common.Begin Web Test
Test Teardown  Common.End Web Test

*** Test Cases ***

001_CC_.COM_ENGLISH_NSS_Res_TS_Shop_Bundles

    User launch Ftr.com application using URL

    Click on the Tab selections as follows: My Account> Account Summary

    Verify Sign In Screen displays fields and buttons