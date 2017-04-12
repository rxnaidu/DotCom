*** Settings ***
Documentation  Ftr.com Automation
Library  Selenium2Library  30

Resource  ../../../Resources/KW/HomePage/Footers/014_CC_.COM_Desktop_NSS_Res_Footers_LinkedinLaunch_KW.robot
Resource  ../../../Resources/PO/Common/common.robot

Test Setup  Common.Begin Web Test
Test Teardown  Common.End Web Test

*** Variables ***
${LINKEDIN_URL}  https://www.linkedin.com/company/frontier-communications
${LINKEDIN_TAB_TITLE}   Frontier Communications | LinkedIn

*** Test Cases ***

014_CC_.COM_Desktop_NSS_Res_Footers_LinkedinLaunch

    User launch Ftr.com application using URL

    Navigate to bottom of the Footer home page and click: LinkedIn

    select window  ${LINKEDIN_TAB_TITLE}

    Verify URL changes to LinkedIn Page  ${LINKEDIN_URL}