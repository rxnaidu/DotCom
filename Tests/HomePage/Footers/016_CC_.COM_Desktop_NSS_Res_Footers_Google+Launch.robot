*** Settings ***
Documentation  Ftr.com Automation
Library  Selenium2Library  30

Resource  ../../../Resources/KW/HomePage/Footers/016_CC_.COM_Desktop_NSS_Res_Footers_Google+Launch_KW.robot
Resource  ../../../Resources/PO/Common/common.robot

Test Teardown  Common.End Web Test

*** Test Cases ***

016_CC_.COM_Desktop_NSS_Res_Footers_Google+Launch

    User launch Ftr.com application using URL

    Navigate to bottom of the Footer home page and click: Google+

    Move to Google+ window Tab

    Verify URL changes to Google+ Page