*** Settings ***
Documentation  Ftr.com Automation
Library  Selenium2Library  30

Resource  ../../../Resources/KW/HomePage/Footers/010_CC_.COM_Desktop_NSS_Res_Footers_StoreLocator_KW.robot
Resource  ../../../Resources/PO/Common/common.robot

Test Setup  Common.Begin Web Test
Test Teardown  Common.End Web Test

*** Variables ***
${STORE_LOCATOR_URL}  https://qat03.frontier.com/corporate/retailstores/locations

*** Test Cases ***

001_CC_.COM_ENGLISH_NSS_Res_TS_Shop_Bundles

    User launch Ftr.com application using URL

    Navigate to bottom of the Footer home page and click: Store Locator

    Verify URL changes to Store Locator Page  ${STORE_LOCATOR_URL}