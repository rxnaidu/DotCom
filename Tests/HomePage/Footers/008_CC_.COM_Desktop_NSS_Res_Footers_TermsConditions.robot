*** Settings ***
Documentation  Ftr.com Automation
Library  Selenium2Library  30

Resource  ../../../Resources/KW/HomePage/Footers/008_CC_.COM_Desktop_NSS_Res_Footers_TermsConditions_KW.robot
Resource  ../../../Resources/PO/Common/common.robot

Test Teardown  Common.End Web Test

*** Test Cases ***
008_CC_.COM_Desktop_NSS_Res_Footers_TermsConditions

    User launch Ftr.com application using URL

    Navigate to bottom of the Footer home page and click: Terms & Conditions

    Verify URL changes to Terms & Conditions Page