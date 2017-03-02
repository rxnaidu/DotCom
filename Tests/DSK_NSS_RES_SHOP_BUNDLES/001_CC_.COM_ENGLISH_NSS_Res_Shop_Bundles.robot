*** Settings ***
Documentation  Ftr.com-Non Self Service-Resedential-Shop-Bundles - All Test Cases
Library  Selenium2Library  60

Resource  ../../Resources/KW/DSK_NSS_RES_SHOP_BUNDLES/001_CC_.COM_ENGLISH_NSS_Res_Shop_Bundles_KW.robot
Resource  ../../Resources/PO/Common/common.robot

Test Setup  Common.Begin Web Test
Test Teardown  Common.End Web Test

*** Variables ***
${LANGUAGE_TOGGLE_TEXT}  Español
${ZIP_CODE_DATA}  14626

*** Test Cases ***

001_CC_.COM_ENGLISH_NSS_Res_Shop_Bundles_Multi-Language_Online & Mobile_Language Toggle Display on Bundle Product Page

    User launch Ftr.com application using URL

    Select change option from header

    Enter copper Zip Code and select Check Availability Button  ${ZIP_CODE_DATA}

    Select Bundle from Shop Category Drop down

    Verify Multi-Language Toggle image displayed in Header

    Verify Multi-Language (Spanish) Toggle displayed in Header  ${LANGUAGE_TOGGLE_TEXT}

