*** Settings ***
Documentation  Ftr.com Automation
Library  Selenium2Library  30

Resource  ../../../Resources/KW/HomePage/Footers/011_CC_.COM_Desktop_NSS_Res_Footers_SiteMap_KW.robot
Resource  ../../../Resources/PO/Common.robot

Test Setup  Begin Web Test
Test Teardown  Common.End Web Test

*** Test Cases ***
011_CC_.COM_Desktop_NSS_Res_Footers_SiteMap

    User launch Ftr.com application using URL

    Navigate to bottom of the Footer home page and click: Site Map

    Verify URL changes to Site Map Page