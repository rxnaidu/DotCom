*** Settings ***
Library  Selenium2Library  60
Resource  ../../../Resources/KW/HomePage/Chat/028_CC_.COM_NSS_Res_Non-LoggedIn_PCS2_NonSignIn_RequiredFields_KW.robot
Resource  ../../../Resources/PO/Common.robot

Test Teardown  Common.End Web Test

*** Test Cases ***

Chat Validations

    User launch Ftr.com application using URL

    Select Moving from Shop Tab

    Select the floating Chat ICON

    Select Residential on Customer Type

    Select Repair on Support Type

    Select Internet on Service Type

    Select Fios Internet Product Type

    Select Next Button

    Enter invalid Name Email Phone for Non Sign In

    Validate Error message for invalid Name Email Phone