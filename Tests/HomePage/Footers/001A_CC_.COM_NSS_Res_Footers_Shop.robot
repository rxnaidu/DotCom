*** Settings ***
Documentation  Ftr.com Automation
Library  Selenium2Library  30

Resource  ../../../Resources/KW/HomePage/Footers/001_CC_.COM_Desktop_NSS_Res_Footers_Shop_KW.robot
Resource  ../../../Resources/PO/Common.robot

#Test Setup  Common.Begin Web Test
Test Teardown  Common.End Web Test

*** Test Cases ***

001_CC_.COM_ENGLISH_NSS_Res_TS_Shop_Bundles

    User launch Ftr.com application using URL

    Navigate to bottom of the Footer home page and click: Shop > Bundles

    Verify URL changes to Bundles Page

    Go back to Home Page

    Navigate to bottom of the Footer home page and click: Shop > Internet

    Verify URL changes to Internet Page

    Go back to Home Page

    Navigate to bottom of the Footer home page and click: Shop > Phone

    Verify URL changes to Phone Page

    Go back to Home Page

    Navigate to bottom of the Footer home page and click: Shop > Video/Tv

    Verify URL changes to Video/Tv Page

    Go back to Home Page

    Navigate to bottom of the Footer home page and click: Shop > Frontier Secure

    Verify URL changes to Frontier Secure Page

    Go back to Home Page

    Navigate to bottom of the Footer home page and click: Shop > Moving

    Verify URL changes to Moving Page

    Go back to Home Page

#    Navigate to bottom of the Footer home page and click: Shop > Discount Programes
#
#    Verify URL changes to Discount Programes Page

