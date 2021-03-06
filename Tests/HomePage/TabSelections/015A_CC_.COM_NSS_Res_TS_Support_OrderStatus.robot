*** Settings ***
Documentation  Ftr.com Automation
Library  Selenium2Library  30

Resource  ../../../Resources/KW/HomePage/TabSelections/015_CC_.COM_ENGLISH_NSS_Res_TS_Support_OrderStatus_KW.robot
Resource  ../../../Resources/PO/Common.robot

Test Setup  Begin Web Test
Test Teardown  Common.End Web Test

*** Test Cases ***

015_CC_.COM_ENGLISH_NSS_Res_TS_Support_OrderStatus

    User launch Ftr.com application using URL

    Click on the Tab selections as follows: Support> Order Status

    wait until page contains  Order Status

    Verify URL changes to Order Status