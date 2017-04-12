*** Settings ***
Documentation  Ftr.com Automation
Library  Selenium2Library  30

Resource  ../../../Resources/KW/HomePage/Footers/012_CC_.COM_Desktop_NSS_Res_Footers_TwitterLaunch_KW.robot
Resource  ../../../Resources/PO/Common/common.robot

Test Setup  Common.Begin Web Test
Test Teardown  Common.End Web Test

*** Variables ***
${TWITTER_URL}  https://twitter.com/FrontierCorp
${TWITTER_TAB_TITLE}  Frontier Comm (@FrontierCorp) | Twitter

*** Test Cases ***

012_CC_.COM_Desktop_NSS_Res_Footers_TwitterLaunch

    User launch Ftr.com application using URL

    Navigate to bottom of the Footer home page and click: Twitter

    select window  ${TWITTER_TAB_TITLE}

    Verify URL changes to Twitter Page  ${TWITTER_URL}