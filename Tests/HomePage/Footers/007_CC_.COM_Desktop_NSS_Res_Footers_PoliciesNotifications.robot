*** Settings ***
Documentation  Ftr.com Automation
Library  Selenium2Library  30

Resource  ../../../Resources/KW/HomePage/Footers/007_CC_.COM_Desktop_NSS_Res_Footers_PoliciesNotifications_KW.robot
Resource  ../../../Resources/PO/Common.robot

Test Teardown  Common.End Web Test

*** Test Cases ***

007_CC_.COM_Desktop_NSS_Res_Footers_PoliciesNotifications

    User launch Ftr.com application using URL

    Navigate to bottom of the Footer home page and click: Policies & Notifications

    Verify URL changes to Policies & Notifications Page