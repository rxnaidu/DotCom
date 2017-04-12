*** Settings ***
Documentation  Ftr.com Automation
Library  Selenium2Library  30

Resource  ../../../Resources/KW/HomePage/Footers/016_CC_.COM_Desktop_NSS_Res_Footers_Google+Launch_KW.robot
Resource  ../../../Resources/PO/Common/common.robot

Test Setup  Common.Begin Web Test
Test Teardown  Common.End Web Test

*** Variables ***
${GOOGLE+_URL}  https://plus.google.com/+FrontierCorp
${GOOGLE+_TAB_TITLE}  Frontier Communications - Google+

*** Test Cases ***

016_CC_.COM_Desktop_NSS_Res_Footers_Google+Launch

    User launch Ftr.com application using URL

    Navigate to bottom of the Footer home page and click: Google+

    select window  ${GOOGLE+_TAB_TITLE}

    Verify URL changes to Google+ Page  ${GOOGLE+_URL}