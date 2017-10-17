*** Settings ***
Documentation  Ftr.com Automation
Library  Selenium2Library  30

Resource  ../../../Resources/KW/HomePage/TabSelections/005_CC_.COM_ENGLISH_NSS_Res_TS_Shop_DigitalEssentials_KW.robot
Resource  ../../../Resources/PO/Common/common.robot

Test Teardown  Common.End Web Test

*** Test Cases ***

005_CC_.COM_ENGLISH_NSS_Res_TS_Shop_DigitalEssentials

    User launch Ftr.com application using URL

    Click on the Tab selections as follows: Shop > Digital Essentials

    Verify URL changes to Digital Essentials