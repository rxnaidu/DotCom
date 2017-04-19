*** Settings ***
Documentation  Ftr.com Automation
Library  Selenium2Library  30

Resource  ../../../Resources/KW/HomePage/Footers/011_CC_.COM_Desktop_NSS_Res_Footers_SiteMap_KW.robot
Resource  ../../../Resources/PO/Common/common.robot

Test Setup  Common.Begin Web Test
Test Teardown  Common.End Web Test

*** Variables ***
${SITE_MAP_URL}  https://qat01.frontier.com/sitemap

*** Test Cases ***

001_CC_.COM_ENGLISH_NSS_Res_TS_Shop_Bundles

    User launch Ftr.com application using URL

    Navigate to bottom of the Footer home page and click: Site Map

    Verify URL changes to Site Map Page  ${SITE_MAP_URL}