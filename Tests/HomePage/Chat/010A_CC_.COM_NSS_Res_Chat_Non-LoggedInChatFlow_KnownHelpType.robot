*** Settings ***
Library  Selenium2Library  60
Resource  ../../../Resources/KW/HomePage/Chat/010_CC_.COM_NSS_Res_Non-LoggedInChatFlow_KnownHelpType_KW.robot
Resource  ../../../Resources/PO/Common.robot

Test Setup  Begin Web Test
Test Teardown  Common.End Web Test

*** Test Cases ***

Chat Validations

    User launch Ftr.com application using URL

    Select the new Multi-Language Toggle on the Residential Home page

    Home page should display in Spanish and toggle display 'English'

    Select the Contact Us option from the Support 2nd Tier Nav Tab

    Select the More Contacts & Languages Tab

    Select Residential from the Customer Type field

    Select Internet from the Service Type field (or any other Service Type)

    Select Frontier FIOS from the Product Type field (or any other Product Type)

    Select Repair from the Help Type field

    Select the floating Chat ICON




