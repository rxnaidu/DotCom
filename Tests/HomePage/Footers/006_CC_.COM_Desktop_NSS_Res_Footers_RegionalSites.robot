*** Settings ***
Documentation  Ftr.com Automation
Library  Selenium2Library  30

Resource  ../../../Resources/KW/HomePage/Footers/006_CC_.COM_Desktop_NSS_Res_Footers_RegionalSites_KW.robot
Resource  ../../../Resources/PO/Common/common.robot

Test Setup  Common.Begin Web Test
Test Teardown  Common.End Web Test

*** Variables ***
${CENTRAL_URL}  https://internet.frontier.com/
${EAST_URL}  https://internet.frontier.com/local/
${MID-SOUTH_URL}  https://internet.frontier.com/plans-pricing.html
${NATIONAL-IL-IA-MN-NE-UT_URL}  https://www.frontierinternet.com/
${NATIONAL-ID-MT_URL}  https://frontierbundles.com/
${SOUTH_URL}  https://www.frontierinternet.com/plans-pricing.html
${SOUTHEAST_URL}  https://internet.frontier.com/services/fios.html
${WEST_URL}  http://west.frontier.com/


*** Test Cases ***
006_CC_.COM_Desktop_NSS_Res_Footers_RegionalSites

    User launch Ftr.com application using URL

    Navigate to bottom of the Footer home page and click: Regional Sites > Central

    Verify URL changes to Central Page  ${CENTRAL_URL}

    Go back to Home Page

    Navigate to bottom of the Footer home page and click: Regional Sites > East

    Verify URL changes to East Page  ${EAST_URL}

    Go back to Home Page

    Navigate to bottom of the Footer home page and click: Regional Sites > Mid-South

    Verify URL changes to Mid-South Page  ${MID-SOUTH_URL}

    Go back to Home Page

    Navigate to bottom of the Footer home page and click: Regional Sites > National-IL,IA,MN,NE,UT

    Verify URL changes to National-IL,IA,MN,NE,UT Page  ${NATIONAL-IL-IA-MN-NE-UT_URL}

    Go back to Home Page

    Navigate to bottom of the Footer home page and click: Regional Sites > National-ID,MT

    Verify URL changes to National-ID,MT Page  ${NATIONAL-ID-MT_URL}

    Go back to Home Page

    Navigate to bottom of the Footer home page and click: Regional Sites > South

    Verify URL changes to South Page  ${SOUTH_URL}

    Go back to Home Page

    Navigate to bottom of the Footer home page and click: Regional Sites > Southeast

    Verify URL changes to Southeast Page  ${SOUTHEAST_URL}

    Go back to Home Page

    Navigate to bottom of the Footer home page and click: Regional Sites > West

    Verify URL changes to West Page  ${WEST_URL}



