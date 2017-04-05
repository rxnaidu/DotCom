*** Settings ***
Documentation  Ftr.com Automation
Library  Selenium2Library  30

Resource  ../../../Resources/KW/HomePage/TabSelections/003_CC_.COM_ENGLISH_NSS_Res_TS_Shop_Phone_KW.robot
Resource  ../../../Resources/PO/Common/common.robot

Test Setup  Common.Begin Web Test
Test Teardown  Common.End Web Test

*** Variables ***
${SHOP_PHONE_URL}  https://qat03.frontier.com/shop/phone

*** Test Cases ***

003_CC_.COM_ENGLISH_NSS_Res_TS_Shop_Phone

    User launch Ftr.com application using URL

    Click on the Tab selections as follows: Shop > Bundles

    Verify URL changes to  ${SHOP_PHONE_URL}