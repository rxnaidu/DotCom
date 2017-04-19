*** Settings ***
Documentation  Ftr.com Automation
Library  Selenium2Library  30

Resource  ../../../Resources/KW/HomePage/Footers/008_CC_.COM_Desktop_NSS_Res_Footers_TermsConditions_KW.robot
Resource  ../../../Resources/PO/Common/common.robot

Test Setup  Common.Begin Web Test
Test Teardown  Common.End Web Test

*** Variables ***
${TERMS_CONDITIONS_URL}  https://qat01.frontier.com/corporate/terms

*** Test Cases ***

001_CC_.COM_ENGLISH_NSS_Res_TS_Shop_Bundles

    User launch Ftr.com application using URL

    Navigate to bottom of the Footer home page and click: Terms & Conditions

    Verify URL changes to Terms & Conditions Page  ${TERMS_CONDITIONS_URL}