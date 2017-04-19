*** Settings ***
Documentation  Ftr.com Automation
Library  Selenium2Library  30

Resource  ../../../Resources/KW/HomePage/Footers/005_CC_.COM_Desktop_NSS_Res_Footers_FrontierSites_KW.robot
Resource  ../../../Resources/PO/Common/common.robot

Test Setup  Common.Begin Web Test
Test Teardown  Common.End Web Test

*** Variables ***
${GET_VANTAGE_URL}  https://getvantage.com/
${FRONTIER_SECURE_URL}  https://ftrsecure.com/
${FRONTIER_BUSINESSEDGE_URL}  https://business.frontier.com/
${FRONTIER_GAMES_URL}  http://www.frontiergames.com/do/gameList?genre=-1
${FRONTIER_WIFI_URL}  https://www.frontierwifi.com/default.aspx
${WHOLESALE_URL}  https://frontier.com/wholesale/home
${FRONTIER_YAHOO_PORTAL_URL}  https://frontier.yahoo.com/
${REFERRAL_PROGRAM_URL}  https://referrals.frontier.com/
${BUSINESSEDGE_PARTNER_PROGRAM_URL}  https://business.frontier.com/become-a-partner


*** Test Cases ***
003_CC_.COM_Desktop_NSS_Res_Footers_Support

    User launch Ftr.com application using URL

    Navigate to bottom of the Footer home page and click: Frontier Sites > Get Vantage

    Verify URL changes to Get Vantage Page  ${GET_VANTAGE_URL}

    Go back to Home Page

    Navigate to bottom of the Footer home page and click: Frontier Sites > Frontier Secure

    Verify URL changes to Frontier Secure Page  ${FRONTIER_SECURE_URL}

    Go back to Home Page

    Navigate to bottom of the Footer home page and click: Frontier Sites > Frontier BusinessEdge

    Verify URL changes to Frontier BusinessEdge Page  ${FRONTIER_BUSINESSEDGE_URL}

    Go back to Home Page

    Navigate to bottom of the Footer home page and click: Frontier Sites > Frontier Games

    Verify URL changes to Frontier Games Page  ${FRONTIER_GAMES_URL}

    Go back to Home Page

    Navigate to bottom of the Footer home page and click: Frontier Sites > Frontier WI-FI

    Verify URL changes to Frontier WI-FI Page  ${FRONTIER_WIFI_URL}

    Go back to Home Page

    Navigate to bottom of the Footer home page and click: Frontier Sites > Wholesale

    Verify URL changes to Wholesale Page  ${WHOLESALE_URL}

    Go back to Home Page

    Navigate to bottom of the Footer home page and click: Frontier Sites > Frontier Yahoo Portal

    Verify URL changes to Frontier Yahoo Portal Page  ${FRONTIER_YAHOO_PORTAL_URL}

    Go back to Home Page

    Navigate to bottom of the Footer home page and click: Frontier Sites > Referral Program

    Verify URL changes to Referral Program Page  ${REFERRAL_PROGRAM_URL}

    Go back to Home Page

    Navigate to bottom of the Footer home page and click: Frontier Sites > BusinessEdge Partner Program

    Verify URL changes to BusinessEdge Partner Program Page  ${BUSINESSEDGE_PARTNER_PROGRAM_URL}


