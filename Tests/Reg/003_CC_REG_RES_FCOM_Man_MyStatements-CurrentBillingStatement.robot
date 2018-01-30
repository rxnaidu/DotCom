*** Settings ***
Library  Selenium2Library  45

Resource  ../../Resources/KW/Reg/003_CC_REG_RES_FCOM_Man_MyStatements-CurrentBillingStatement_KW.robot
Resource  ../../Resources/PO/Common/common.robot

Test Teardown  Common.End Web Test

*** Test Cases ***

003_CC_REG_RES_FCOM_Man_MyStatements-Current BillingStatement

    User launch Ftr.com application using URL

    Select the Sign In link

    Enter User name and Password and Select Sign In button

    Select close on auto payment popup

#    Select Account from drop down on Account Summary Page

    Verify 17 digit Account Number displayed on Account Summary page

    Mouse over on My Bills page and select Curren Bill option

    Validate Current Bill Page

#    Validate Billing Date is displayed

#    Validate Current Bill dates

    Select + to expand Frontier Monthly Service Charges

    Select + to expant Other Service Charges and Credits

#    Select + to expand Taxas and other services

    Validate current charges

    Validate Total Bill Amount

    Validate New Charges Due Date

#    Validate Pay Bill button
#
#    Validate Sign up for Auto Pay link