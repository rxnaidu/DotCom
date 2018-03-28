*** Settings ***
Library  Selenium2Library  60
Resource  ../../../Resources/KW/HomePage/Chat/020_CC_.COM_NSS_Res_Non-LoggedIn_PCS1_ProductType_Internet_KW.robot
Resource  ../../../Resources/PO/Common.robot

Test Teardown  Common.End Web Test

*** Test Cases ***

Chat Validations

    User launch Ftr.com application using URL

    Select the new Multi-Language Toggle on the Residential Home page

    Home page should display in Spanish and toggle display 'English'

    Select the floating Chat ICON

    Select Residential on Customer Type

    Select Repair on Support Type

    Select Internet on Service Type

    Validate Internet Product Type