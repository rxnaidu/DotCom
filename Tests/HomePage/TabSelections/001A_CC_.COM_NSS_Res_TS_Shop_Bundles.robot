*** Settings ***
Documentation  Ftr.com Automation
Library  Selenium2Library  30

Resource  ../../../Resources/KW/HomePage/TabSelections/001_CC_.COM_ENGLISH_NSS_Res_TS_Shop_Bundles_KW.robot
Resource  ../../../Resources/PO/Common.robot

Test Setup  Begin Web Test
Test Teardown  Common.End Web Test

*** Test Cases ***

001_CC_.COM_ENGLISH_NSS_Res_TS_Shop_Bundles

    User launch Ftr.com application using URL

    Click on the Tab selections as follows: Shop > Bundles

    Verify URL changes to Bundles