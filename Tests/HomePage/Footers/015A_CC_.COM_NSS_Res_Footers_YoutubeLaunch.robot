*** Settings ***
Documentation  Ftr.com Automation
Library  Selenium2Library  30

Resource  ../../../Resources/KW/HomePage/Footers/015_CC_.COM_Desktop_NSS_Res_Footers_YoutubeLaunch_KW.robot
Resource  ../../../Resources/PO/Common.robot

Test Setup  Begin Web Test
Test Teardown  Common.End Web Test

*** Test Cases ***

015_CC_.COM_Desktop_NSS_Res_Footers_YoutubeLaunch

    User launch Ftr.com application using URL

    Navigate to bottom of the Footer home page and click: YouTube

    Move to YouTube window Tab

    Verify URL changes to YouTube Page