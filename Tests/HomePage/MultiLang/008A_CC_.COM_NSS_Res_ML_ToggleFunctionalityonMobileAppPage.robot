*** Settings ***
Library  Selenium2Library  30
Resource  ../../../Resources/KW/HomePage/MultiLang/008_CC_.COM_NSS_Res_ML_ToggleFunctionalityonMobileAppPage_KW.robot
Resource  ../../../Resources/PO/Common.robot

Test Setup  Begin Web Test
Test Teardown  Common.End Web Test

*** Test Cases ***

Multi Language Features

    User launch Ftr.com application using URL

    Select Mobile App option from My Account Tab

    Validate the display of the Multi-Language Toggle on the MyFrontier Mobile App Landing page

    Select the new Multi-Language Toggle on the Residential Home page

    Validate the display of the Multi-Language Toggle on the Residential Home page