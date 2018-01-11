*** Settings ***
Documentation  Ftr.com Automation
Library  Selenium2Library  30

Resource  ../../../Resources/KW/HomePage/Footers/005_CC_.COM_Desktop_NSS_Res_Footers_FrontierSites_KW.robot
Resource  ../../../Resources/PO/Common/common.robot

Test Teardown  Common.End Web Test

*** Test Cases ***
005_CC_.COM_Desktop_NSS_Res_Footers_FrontierSites

    User launch Ftr.com application using URL

    Navigate to bottom of the Footer home page and click: Frontier Sites > Get Vantage

    Verify URL changes to Get Vantage Page

    Go back to Home Page

#    Navigate to bottom of the Footer home page and click: Frontier Sites > Frontier Secure
#
#    Verify URL changes to Frontier Secure Page
#
#    Go back to Home Page

    Navigate to bottom of the Footer home page and click: Frontier Sites > Frontier Business

    Verify URL changes to Frontier Business Page

    Go back to Home Page

#    Navigate to bottom of the Footer home page and click: Frontier Sites > Frontier Games
#
#    Verify URL changes to Frontier Games Page
#
#    Go back to Home Page

    Navigate to bottom of the Footer home page and click: Frontier Sites > Frontier WI-FI

    Verify URL changes to Frontier WI-FI Page

    Go back to Home Page

    Navigate to bottom of the Footer home page and click: Frontier Sites > Wholesale

    Verify URL changes to Wholesale Page

    Go back to Home Page

    Navigate to bottom of the Footer home page and click: Frontier Sites > Frontier Yahoo Portal

    Verify URL changes to Frontier Yahoo Portal Page

    Go back to Home Page

#    Navigate to bottom of the Footer home page and click: Frontier Sites > Referral Program
#
#    Verify URL changes to Referral Program Page
#
#    Go back to Home Page

#    Navigate to bottom of the Footer home page and click: Frontier Sites > Frontier Business Partner
#
#    Verify URL changes to Frontier Business Partner Page


