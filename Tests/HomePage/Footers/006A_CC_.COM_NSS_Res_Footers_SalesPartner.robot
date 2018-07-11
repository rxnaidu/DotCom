*** Settings ***
Documentation  Ftr.com Automation
Library  Selenium2Library  30

Resource  ../../../Resources/KW/HomePage/Footers/006_CC_.COM_Desktop_NSS_Res_Footers_RegionalSites_KW.robot
Resource  ../../../Resources/PO/Common.robot

Test Setup  Begin Web Test
Test Teardown  Common.End Web Test

*** Test Cases ***
006_CC_.COM_Desktop_NSS_Res_Footers_SalesPartner

    User launch Ftr.com application using URL

    Navigate to bottom of the Footer home page and click: SALES PARTNERS > Frontier Internet

    Verify URL changes to Frontier Internet Page

    Go back to Home Page

    Navigate to bottom of the Footer home page and click: SALES PARTNERS > Local Internet

    Verify URL changes to Local Internet Page

    Go back to Home Page

    Navigate to bottom of the Footer home page and click: SALES PARTNERS > Frontier FiOS

    Verify URL changes to Frontier FiOS Page

    Go back to Home Page

#    Navigate to bottom of the Footer home page and click: SALES PARTNERS > Frontier Plans
#
#    Verify URL changes to Frontier Plans Page
#
#    Go back to Home Page

#    Navigate to bottom of the Footer home page and click: SALES PARTNERS> Frontier Broadband
#
#    Verify URL changes to Frontier Broadband Page
#
#    Go back to Home Page

#    Navigate to bottom of the Footer home page and click: SALES PARTNERS > Frontier Internet Plans
#
#    Verify URL changes to Frontier Internet Plans Page
#
#    Go back to Home Page

#    Navigate to bottom of the Footer home page and click: SALES PARTNERS > Frontier Bundles
#
#    Verify URL changes to Frontier Bundles Page
#
#    Go back to Home Page

#    Navigate to bottom of the Footer home page and click: SALES PARTNERS > Frontier West
#
#    Verify URL changes to Frontier West Page



