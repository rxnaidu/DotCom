*** Settings ***
Library  Selenium2Library  60
Resource  ../../../Resources/KW/HomePage/Chat/032_CC_.COM_NSS_Res_Non-LoggedIn_PCS2_BackButton-Link_KW.robot
Resource  ../../../Resources/PO/Common.robot

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

    Validate the display of the Back button or link on the Pre-Chat Survey Step2