*** Settings ***
Documentation  Ftr.com Automation
Library  Selenium2Library  30

Resource  ../../../Resources/KW/HomePage/TabSelections/016_CC_.COM_ENGLISH_NSS_Res_TS_Support_ContactUs_KW.robot
Resource  ../../../Resources/PO/Common/common.robot

Test Setup  Common.Begin Web Test
Test Teardown  Common.End Web Test

*** Variables ***
${CONTACT_US_URL}  https://qat01.frontier.com/contact-us#/residential

*** Test Cases ***

016_CC_.COM_ENGLISH_NSS_Res_TS_Support_ContactUs

    User launch Ftr.com application using URL

    Click on the Tab selections as follows: Support> Contact Us

    Verify URL changes to  ${CONTACT_US_URL}