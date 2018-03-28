*** Settings ***
Library  Selenium2Library  60
Resource  ../../../Resources/KW/HomePage/Chat/036_CC_.COM_NSS_Res_Non-LoggedIn_PCS3_FreeForm_RequiredField_KW.robot
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

    Select Fios Internet Product Type

    Select PCS1 Next Button

    Enter Name Email Phone for Non Sign In

    Select Next button on Pre-Chat Survey Step2

    Select Submit button on the Pre-Chat Survey Step 3 without entering text

    The System Error message should display when all required fields are not completed