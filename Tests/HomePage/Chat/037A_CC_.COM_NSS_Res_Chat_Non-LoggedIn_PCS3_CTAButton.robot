*** Settings ***
Library  Selenium2Library  60
Resource  ../../../Resources/KW/HomePage/Chat/037_CC_.COM_NSS_Res_Non-LoggedIn_PCS3_CTAButton_KW.robot
Resource  ../../../Resources/PO/Common.robot

Test Setup  Begin Web Test
Test Teardown  Common.End Web Test

*** Test Cases ***

Chat Validations

    User launch Ftr.com application using URL

    Select Moving from Shop Tab

    Select the floating Chat ICON

    Select Residential on Customer Type

    Select Technical Support on Support Type

    Select Internet on Service Type

    Select Fios Internet Product Type

    Select PCS1 Next Button

    Enter Name Email Phone for Non Sign In

    Select Next button on Pre-Chat Survey Step2

    Validate the Diasplay of PCS3 Submit button