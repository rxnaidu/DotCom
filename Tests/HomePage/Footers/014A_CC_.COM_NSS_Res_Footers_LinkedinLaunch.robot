*** Settings ***
Documentation  Ftr.com Automation
Library  Selenium2Library  30

Resource  ../../../Resources/KW/HomePage/Footers/014_CC_.COM_Desktop_NSS_Res_Footers_LinkedinLaunch_KW.robot
Resource  ../../../Resources/PO/Common.robot

Test Teardown  Common.End Web Test

*** Test Cases ***

014_CC_.COM_Desktop_NSS_Res_Footers_LinkedinLaunch

    User launch Ftr.com application using URL

    Navigate to bottom of the Footer home page and click: LinkedIn

    Move to LinkedIn window Tab

    Verify URL changes to LinkedIn Page