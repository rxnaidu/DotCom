*** Settings ***
Documentation  Ftr.com Automation
Library  Selenium2Library  30

Resource  ../../../Resources/KW/HomePage/Footers/013_CC_.COM_Desktop_NSS_Res_Footers_FacebookLaunch_KW.robot
Resource  ../../../Resources/PO/Common/common.robot

Test Teardown  Common.End Web Test

*** Test Cases ***
013_CC_.COM_Desktop_NSS_Res_Footers_FacebookLaunch

    User launch Ftr.com application using URL

    Navigate to bottom of the Footer home page and click: Facebook

    Move to Facebook window Tab

    Verify URL changes to Facebook Page