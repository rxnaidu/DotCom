*** Settings ***
Documentation  Ftr.com Automation
Library  Selenium2Library  30

Resource  ../../../Resources/KW/HomePage/TabSelections/012_CC_.COM_ENGLISH_NSS_Res_TS_Support_HelpCenter_KW.robot
Resource  ../../../Resources/PO/Common.robot

Test Teardown  Common.End Web Test

*** Test Cases ***

012_CC_.COM_ENGLISH_NSS_Res_TS_Support_HelpCenter

    User launch Ftr.com application using URL

    Click on the Tab selections as follows: Support> Help Center

    Verify URL changes to Help Center