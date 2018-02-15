*** Settings ***
Documentation  Ftr.com Automation
Library  Selenium2Library  30

Resource  ../../../Resources/KW/HomePage/TabSelections/008_CC_.COM_ENGLISH_NSS_Res_TS_MyAccount_MyPayments_KW.robot
Resource  ../../../Resources/PO/Common.robot

Test Teardown  Common.End Web Test

*** Test Cases ***

008_CC_.COM_ENGLISH_NSS_Res_TS_MyAccount_MyPayments

    User launch Ftr.com application using URL

    Click on the Tab selections as follows: My Account> My Payments

    Verify Sign In Screen displays fields and buttons