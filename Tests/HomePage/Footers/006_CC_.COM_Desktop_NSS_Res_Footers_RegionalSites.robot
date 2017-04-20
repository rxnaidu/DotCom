*** Settings ***
Documentation  Ftr.com Automation
Library  Selenium2Library  30

Resource  ../../../Resources/KW/HomePage/Footers/006_CC_.COM_Desktop_NSS_Res_Footers_RegionalSites_KW.robot
Resource  ../../../Resources/PO/Common/common.robot

#Test Setup  Common.Begin Web Test
Test Teardown  Common.End Web Test

*** Test Cases ***
006_CC_.COM_Desktop_NSS_Res_Footers_RegionalSites

    User launch Ftr.com application using URL

    Navigate to bottom of the Footer home page and click: Regional Sites > Central

    Verify URL changes to Central Page

    Go back to Home Page

    Navigate to bottom of the Footer home page and click: Regional Sites > East

    Verify URL changes to East Page

    Go back to Home Page

    Navigate to bottom of the Footer home page and click: Regional Sites > Mid-South

    Verify URL changes to Mid-South Page

    Go back to Home Page

    Navigate to bottom of the Footer home page and click: Regional Sites > National-IL,IA,MN,NE,UT

    Verify URL changes to National-IL,IA,MN,NE,UT Page

    Go back to Home Page

    Navigate to bottom of the Footer home page and click: Regional Sites > National-ID,MT

    Verify URL changes to National-ID,MT Page

    Go back to Home Page

    Navigate to bottom of the Footer home page and click: Regional Sites > South

    Verify URL changes to South Page

    Go back to Home Page

    Navigate to bottom of the Footer home page and click: Regional Sites > Southeast

    Verify URL changes to Southeast Page

    Go back to Home Page

    Navigate to bottom of the Footer home page and click: Regional Sites > West

    Verify URL changes to West Page



