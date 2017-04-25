*** Settings ***
Documentation  Ftr.com Automation
Library  Selenium2Library  30

Resource  ../../../Resources/KW/HomePage/TabSelections/004_CC_.COM_ENGLISH_NSS_Res_TS_Shop_Video_TV_KW.robot
Resource  ../../../Resources/PO/Common/common.robot

Test Teardown  Common.End Web Test

*** Test Cases ***

004_CC_.COM_ENGLISH_NSS_Res_TS_Shop_Video_TV

    User launch Ftr.com application using URL

    Click on the Tab selections as follows: Shop > Video/TV

    Verify URL changes to Video/TV