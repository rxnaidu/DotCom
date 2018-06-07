*** Settings ***
Documentation  Ftr.com Automation
Library  Selenium2Library  30

Resource  ../../../Resources/KW/HomePage/TabSelections/010_CC_.COM_ENGLISH_NSS_Res_TS_MyAccount_MyProfile_KW.robot
Resource  ../../../Resources/PO/Common.robot

Test Teardown  Common.End Web Test

*** Test Cases ***

010_CC_.COM_ENGLISH_NSS_Res_TS_MyAccount_MyProfile

    User launch Ftr.com application using URL

    Click on the Tab selections as follows: My Account> My Profile

    Verify URL changes to MyProfile