*** Settings ***
Documentation  Ftr.com Automation
Library  Selenium2Library  30

Resource  ../../../Resources/KW/HomePage/Footers/009_CC_.COM_Desktop_NSS_Res_Footers_PrivacyPolicy_KW.robot
Resource  ../../../Resources/PO/Common/common.robot

Test Teardown  Common.End Web Test

*** Test Cases ***

009_CC_.COM_Desktop_NSS_Res_Footers_PrivacyPolicy

    User launch Ftr.com application using URL

    Navigate to bottom of the Footer home page and click: Privacy Policy

    Verify URL changes to Privacy Policy Page