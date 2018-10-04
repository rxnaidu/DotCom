*** Settings ***
Documentation  Ftr.com Automation
Library  Selenium2Library  30

Resource  ../../../Resources/KW/HomePage/Footers/005_CC_.COM_Desktop_NSS_Res_Footers_FrontierSites_KW.robot
Resource  ../../../Resources/PO/Common.robot

Test Setup  Begin Web Test
Test Teardown  Common.End Web Test

*** Test Cases ***
005_CC_.COM_Desktop_NSS_Res_Footers_FrontierSites

    User launch Ftr.com application using URL

    Navigate to bottom of the Footer home page and click: Frontier Sites > Frontier Business

    Verify URL changes to Frontier Business Page

    Go back to Home Page

    Navigate to bottom of the Footer home page and click: Frontier Sites > Frontier WI-FI

    Verify URL changes to Frontier WI-FI Page

    Go back to Home Page

    Navigate to bottom of the Footer home page and click: Frontier Sites > Wholesale

    Verify URL changes to Wholesale Page

    Go back to Home Page

    Navigate to bottom of the Footer home page and click: Frontier Sites > Frontier Yahoo Portal

    Verify URL changes to Frontier Yahoo Portal Page

    Go back to Home Page

    Navigate to bottom of the Footer home page and click: Frontier Sites > Online Phone Directories

    Verify URL changes to Online Phone Directories Page

    Go back to Home Page



