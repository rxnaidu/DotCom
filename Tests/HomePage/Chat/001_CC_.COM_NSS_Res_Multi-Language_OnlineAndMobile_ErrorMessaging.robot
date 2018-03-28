*** Settings ***
Library  Selenium2Library  60
Resource  ../../../Resources/KW/HomePage/Chat/001_CC_.COM_NSS_Res_Multi-Language_OnlineAndMobile_ErrorMessaging_KW.robot
Resource  ../../../Resources/PO/Common.robot

Test Teardown  Common.End Web Test

*** Test Cases ***

Chat Validations

    User launch Ftr.com application using URL

    Select the new Multi-Language Toggle on the Residential Home page

    Home page should display in Spanish and toggle display 'English'

    Navigate to Trouble Ticket Status and verify Spanish text is displayed

    Navigate to Order Status and verify Spanish text is displayed

#    Validate error message

