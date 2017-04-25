*** Settings ***
Documentation  Ftr.com Automation
Library  Selenium2Library  60
Resource  ../../../Resources/KW/HomePage/Headers/05_WholeSaleTab_KW.robot
Resource  ../../../Resources/PO/Common/common.robot

Test Teardown  Common.End Web Test

*** Test Cases ***
005_CC_.COM_ENGLISH_NSS_Res_Headers_WholeSaleTab

    User launch Ftr.com application using URL

    User clicks Wholesale Tab

    Verify Wholesale home page is displayed

    User clicks back button

    Verify Residential Home Page is displayed