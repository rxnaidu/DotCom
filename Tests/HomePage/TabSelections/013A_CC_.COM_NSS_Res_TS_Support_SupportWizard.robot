*** Settings ***
Documentation  Ftr.com Automation
Library  Selenium2Library  30

Resource  ../../../Resources/KW/HomePage/TabSelections/013_CC_.COM_ENGLISH_NSS_Res_TS_Support_SupportWizard_KW.robot
Resource  ../../../Resources/PO/Common.robot

Test Teardown  Common.End Web Test

*** Test Cases ***

013_CC_.COM_ENGLISH_NSS_Res_TS_Support_SupportWizard

    User launch Ftr.com application using URL

    Click on the Tab selections as follows: Support> Support Wizard

    Verify URL changes to Support Wizard