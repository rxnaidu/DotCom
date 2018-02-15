*** Settings ***
Documentation  Ftr.com Automation
Library  Selenium2Library  30

Resource  ../../../Resources/KW/HomePage/TabSelections/003_CC_.COM_ENGLISH_NSS_Res_TS_Shop_Phone_KW.robot
Resource  ../../../Resources/PO/Common.robot

Test Teardown  Common.End Web Test

*** Test Cases ***

003_CC_.COM_ENGLISH_NSS_Res_TS_Shop_Phone

    User launch Ftr.com application using URL

    Click on the Tab selections as follows: Shop > Phone

    Verify URL changes to Phone