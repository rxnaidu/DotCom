*** Settings ***
Documentation  Ftr.com Automation
Library  Selenium2Library  30

Resource  ../../../Resources/KW/HomePage/Footers/015_CC_.COM_Desktop_NSS_Res_Footers_YoutubeLaunch_KW.robot
Resource  ../../../Resources/PO/Common/common.robot

Test Setup  Common.Begin Web Test
Test Teardown  Common.End Web Test

*** Variables ***
${YOUTUBE_URL}  https://www.youtube.com/user/FrontierCorp
${YOUTUBE_TAB_TITLE}  Frontier Communications - YouTube
*** Test Cases ***

015_CC_.COM_Desktop_NSS_Res_Footers_YoutubeLaunch

    User launch Ftr.com application using URL

    Navigate to bottom of the Footer home page and click: YouTube

    select window  ${YOUTUBE_TAB_TITLE}

    Verify URL changes to YouTube Page  ${YOUTUBE_URL}