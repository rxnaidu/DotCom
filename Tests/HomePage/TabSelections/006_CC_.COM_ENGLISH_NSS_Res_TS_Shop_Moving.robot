*** Settings ***
Documentation  Ftr.com Automation
Library  Selenium2Library  30

Resource  ../../../Resources/KW/HomePage/TabSelections/006_CC_.COM_ENGLISH_NSS_Res_TS_Shop_Moving_KW.robot
Resource  ../../../Resources/PO/Common/common.robot

Test Setup  Common.Begin Web Test
Test Teardown  Common.End Web Test

*** Variables ***
${SHOP_MOVING_URL}  https://qat01.frontier.com/corporate/movers

*** Test Cases ***

001_CC_.COM_ENGLISH_NSS_Res_TS_Shop_Bundles

    User launch Ftr.com application using URL

    Click on the Tab selections as follows: Shop > Bundles

    Verify URL changes to  ${SHOP_MOVING_URL}