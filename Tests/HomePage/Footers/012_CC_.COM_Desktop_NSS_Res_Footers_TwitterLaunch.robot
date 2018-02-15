*** Settings ***
Documentation  Ftr.com Automation
Library  Selenium2Library  30

Resource  ../../../Resources/KW/HomePage/Footers/012_CC_.COM_Desktop_NSS_Res_Footers_TwitterLaunch_KW.robot
Resource  ../../../Resources/PO/Common.robot

Test Teardown  Common.End Web Test

*** Test Cases ***
012_CC_.COM_Desktop_NSS_Res_Footers_TwitterLaunch

    User launch Ftr.com application using URL

    Navigate to bottom of the Footer home page and click: Twitter

    Move to Twitter window Tab

    Verify URL changes to Twitter Page