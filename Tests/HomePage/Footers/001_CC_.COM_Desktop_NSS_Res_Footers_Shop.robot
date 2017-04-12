*** Settings ***
Documentation  Ftr.com Automation
Library  Selenium2Library  30

Resource  ../../../Resources/KW/HomePage/Footers/001_CC_.COM_Desktop_NSS_Res_Footers_Shop_KW.robot
Resource  ../../../Resources/PO/Common/common.robot

Test Setup  Common.Begin Web Test
Test Teardown  Common.End Web Test

*** Variables ***
${BUNDLES_URL}  https://qat03.frontier.com/shop/bundles
${INTERNET_URL}  https://qat03.frontier.com/shop/internet
${PHONE_URL}  https://qat03.frontier.com/shop/phone
${VIDEO/TV_URL}  https://qat03.frontier.com/shop/tv
${DIGITAL_ESSENTIAL_URL}  https://qat03.frontier.com/shop/frontier-secure
${MOVING}  https://qat03.frontier.com/corporate/movers
${DUSCOUNT_PROGRAMS_URL}  https://qat03.frontier.com/resources/discount-programs

*** Test Cases ***

001_CC_.COM_ENGLISH_NSS_Res_TS_Shop_Bundles

    User launch Ftr.com application using URL

    Navigate to bottom of the Footer home page and click: Shop > Bundles

    Verify URL changes to Bundles Page  ${BUNDLES_URL}

    Go back to Home Page

    Navigate to bottom of the Footer home page and click: Shop > Internet

    Verify URL changes to Internet Page  ${INTERNET_URL}

    Go back to Home Page

    Navigate to bottom of the Footer home page and click: Shop > Phone

    Verify URL changes to Phone Page  ${PHONE_URL}

    Go back to Home Page

    Navigate to bottom of the Footer home page and click: Shop > Video/Tv

    Verify URL changes to Video/Tv Page  ${VIDEO/TV_URL}

    Go back to Home Page

    Navigate to bottom of the Footer home page and click: Shop > Degital Essentials

    Verify URL changes to Degital Essentials Page  ${DIGITAL_ESSENTIAL_URL}

    Go back to Home Page

    Navigate to bottom of the Footer home page and click: Shop > Moving

    Verify URL changes to Moving Page  ${MOVING}

    Go back to Home Page

    Navigate to bottom of the Footer home page and click: Shop > Discount Programes

    Verify URL changes to Discount Programes Page  ${DUSCOUNT_PROGRAMS_URL}

