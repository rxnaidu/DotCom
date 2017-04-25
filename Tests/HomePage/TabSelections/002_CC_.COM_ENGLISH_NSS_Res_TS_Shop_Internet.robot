*** Settings ***
Documentation  Ftr.com Automation
Library  Selenium2Library  30

Resource  ../../../Resources/KW/HomePage/TabSelections/002_CC_.COM_ENGLISH_NSS_Res_TS_Shop_Internet_KW.robot
Resource  ../../../Resources/PO/Common/common.robot

Test Teardown  Common.End Web Test

*** Test Cases ***

002_CC_.COM_ENGLISH_NSS_Res_TS_Shop_Internet

    User launch Ftr.com application using URL

    Click on the Tab selections as follows: Shop > Internet

    Verify URL changes to Internet