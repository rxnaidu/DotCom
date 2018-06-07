*** Settings ***
Documentation  Ftr.com Automation
Library  Selenium2Library  30

Resource  ../../../Resources/KW/HomePage/TabSelections/011_CC_.COM_ENGLISH_NSS_Res_TS_MyAccount_MyFrontierMobileApp_KW.robot
Resource  ../../../Resources/PO/Common.robot

Test Teardown  Common.End Web Test

*** Test Cases ***

001_CC_.COM_ENGLISH_NSS_Res_TS_Shop_Bundles

    User launch Ftr.com application using URL

    Click on the Tab selections as follows: My Account> MyFrontier Mobole App

    Verify URL changes to MyFrontier Mobole App