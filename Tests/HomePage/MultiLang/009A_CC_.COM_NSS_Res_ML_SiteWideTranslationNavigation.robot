*** Settings ***
Library  Selenium2Library  30
Resource  ../../../Resources/KW/HomePage/MultiLang/009_CC_.COM_NSS_Res_ML_SiteWideTranslationNavigation_KW.robot
Resource  ../../../Resources/PO/Common.robot

Test Setup  Begin Web Test
Test Teardown  Common.End Web Test

*** Test Cases ***

Multi Language Features

    User launch Ftr.com application using URL

    User mouse over on Shop Tab

    Validate Language Toggle on the Home Page

    Verify all sub tabs are displayed in English under Shop Tab

    User mouse over on My Account Tab

    Verify all subtabs are displayed in English under My Account Tab

    User mouse over on Support Tab

    Verify all subtabs are displayed in English under Support Tab
