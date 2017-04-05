*** Settings ***
Documentation  Ftr.com Automation
Library  Selenium2Library  30

Resource  ../../../Resources/KW/HomePage/TabSelections/013_CC_.COM_ENGLISH_NSS_Res_TS_Support_SupportWizard_KW.robot
Resource  ../../../Resources/PO/Common/common.robot

Test Setup  Common.Begin Web Test
Test Teardown  Common.End Web Test

*** Variables ***
${SUPPORT_WIZARDURL}  https://qat03.frontier.com/HelpCenter/SupportWizard/Troubleshoot/Sign-in/Get-Started

*** Test Cases ***

013_CC_.COM_ENGLISH_NSS_Res_TS_Support_SupportWizard

    User launch Ftr.com application using URL

    Click on the Tab selections as follows: Support> Support Wizard

    Verify URL changes to  ${SUPPORT_WIZARDURL}