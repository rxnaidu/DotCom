*** Settings ***
Documentation  Ftr.com Automation
Library  Selenium2Library  30

Resource  ../../../Resources/KW/HomePage/Footers/009_CC_.COM_Desktop_NSS_Res_Footers_PrivacyPolicy_KW.robot
Resource  ../../../Resources/PO/Common/common.robot

Test Setup  Common.Begin Web Test
Test Teardown  Common.End Web Test

*** Variables ***
${PRIVACY_POLICY_URL}  https://qat01.frontier.com/~/media/resources/policies/privacy-policy.ashx

*** Test Cases ***

001_CC_.COM_ENGLISH_NSS_Res_TS_Shop_Bundles

    User launch Ftr.com application using URL

    Navigate to bottom of the Footer home page and click: Privacy Policy

    Verify URL changes to Privacy Policy Page  ${PRIVACY_POLICY_URL}