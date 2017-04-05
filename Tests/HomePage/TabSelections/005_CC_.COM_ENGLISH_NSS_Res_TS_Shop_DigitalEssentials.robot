*** Settings ***
Documentation  Ftr.com Automation
Library  Selenium2Library  30

Resource  ../../../Resources/KW/HomePage/TabSelections/005_CC_.COM_ENGLISH_NSS_Res_TS_Shop_DigitalEssentials_KW.robot
Resource  ../../../Resources/PO/Common/common.robot

Test Setup  Common.Begin Web Test
Test Teardown  Common.End Web Test

*** Variables ***
${SHOP_DEGITAL_ESSENTIAL_URL}  https://qat03.frontier.com/shop/frontier-secure

*** Test Cases ***

001_CC_.COM_ENGLISH_NSS_Res_TS_Shop_Bundles

    User launch Ftr.com application using URL

    Click on the Tab selections as follows: Shop > Bundles

    Verify URL changes to  ${SHOP_DEGITAL_ESSENTIAL_URL}