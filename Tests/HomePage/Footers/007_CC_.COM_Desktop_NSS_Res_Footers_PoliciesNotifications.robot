*** Settings ***
Documentation  Ftr.com Automation
Library  Selenium2Library  30

Resource  ../../../Resources/KW/HomePage/Footers/007_CC_.COM_Desktop_NSS_Res_Footers_PoliciesNotifications_KW.robot
Resource  ../../../Resources/PO/Common/common.robot

Test Setup  Common.Begin Web Test
Test Teardown  Common.End Web Test

*** Variables ***
${POLICIES_NOTIFICATIONS}  https://qat03.frontier.com/corporate/policies

*** Test Cases ***

007_CC_.COM_Desktop_NSS_Res_Footers_PoliciesNotifications

    User launch Ftr.com application using URL

    Navigate to bottom of the Footer home page and click: Policies & Notifications

    Verify URL changes to Policies & Notifications Page  ${POLICIES_NOTIFICATIONS}