*** Settings ***
Library  Selenium2Library  60
Resource  ../../../Resources/KW/HomePage/Chat/011_CC_.COM_NSS_Res_Non-LoggedInChatFlow_UnknownHelpType_KW.robot
Resource  ../../../Resources/PO/Common.robot

Test Setup  Begin Web Test
Test Teardown  Common.End Web Test

*** Test Cases ***

Chat Validations

    User launch Ftr.com application using URL

    Select Internet from Shop Tab

    Select the floating Chat ICON




