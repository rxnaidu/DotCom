*** Settings ***
Library  Selenium2Library  30
Resource  ../../PO/Common.robot
Resource  ../../PO/LoginPage.robot
Resource  ../../PO/HomePage.robot
Resource  ../../PO/AccountSummary.robot
Resource  ../../Properties/reg_PR.robot

*** Variables ***
${TESTCASE_NO}  TC02

*** Keywords ***
User launch Ftr.com application using URL
    Begin Web Test from Excel  ${EXCEL_LOC}  ${SHEET_NAME}  ${TESTCASE_NO}  ${BROWSER_NAME}

Select the Sign In link
    Sign In link

Enter User name and Password and Select Sign In button
    User Sign In from Excel  ${EXCEL_LOC}  ${SHEET_NAME}  ${TESTCASE_NO}  ${USERNAME_SIGNIN}  ${PASSWORD_SIGNIN}

Select close on auto payment popup
    Verify page elements
    Close Auto Pay popup for Ecom

Select Account from drop down on Account Summary Page
    Select Account Number

Verify 17 digit Account Number displayed on Account Summary page
    ${Expected_Account_Num}  read excel data by cell name  ${EXCEL_LOC}  ${SHEET_NAME}  ${TESTCASE_NO}  ${ACT_NUM}
    sleep  2s
    page should contain  ${Expected_Account_Num}

Mouse over on My Bills page and select Curren Bill option
    wait until element is enabled  id=lnkStatements
    focus  id=lnkStatements
    sleep  1s
    mouse over  id=lnkStatements

    sleep  1s
    wait until element is enabled  link=Current Bill
    click link  link=Current Bill

Validate Current Bill Page
    wait until page contains  Click the plus sign (+) to expand each section
#    wait until page contains  OTHER CHARGES

    page should contain  Here is a detailed view of your current Frontier bill. Click the plus sign (+) to expand each section and reveal line item charges.

    ${Expected_Account_Num}  read excel data by cell name  ${EXCEL_LOC}  ${SHEET_NAME}  ${TESTCASE_NO}  ${ACT_NUM}
    page should contain  ${Expected_Account_Num}

Validate Billing Date is displayed
    page should contain  Billing Date

    ${Billing_Date}  read excel data by cell name  ${EXCEL_LOC}  ${SHEET_NAME}  ${TESTCASE_NO}  ${BILLING_DATE}
    page should contain  ${Billing_Date}

Validate Current Bill dates
    page should contain  Current Bill

    ${Current_Bill_Dates}  read excel data by cell name  ${EXCEL_LOC}  ${SHEET_NAME}  ${TESTCASE_NO}  ${CURRENT_BILL_DATE}
    page should contain  ${Current_Bill_Dates}

#Select + to expand Frontier Monthly Service Charges
#    click element  xpath=//h4[contains(text(),'OTHER CHARGES AND CREDITS FROM PRIOR')]/i
#    sleep  2s

Select + to expand Frontier Monthly Service Charges
    wait until element is enabled  xpath=//h4[contains(text(),'FRONTIER MONTHLY SERVICE CHARGES')]/i
    wait until element is visible  xpath=//h4[contains(text(),'FRONTIER MONTHLY SERVICE CHARGES')]/i
    sleep  10s
    Scroll Page To Locator View  xpath=//h4[contains(text(),'FRONTIER MONTHLY SERVICE CHARGES')]/i
    click element  xpath=//h4[contains(text(),'FRONTIER MONTHLY SERVICE CHARGES')]/i
    sleep  2s

Select + to expant Other Service Charges and Credits
    click element  xpath=//h4[contains(text(),'OTHER SERVICE CHARGES AND CREDITS')]/i
    sleep  2s

Select + to expand Taxas and other services
    click element  xpath=//h4[contains(text(),'TAXES AND OTHER CHARGES')]/i

Validate current charges
    page should contain  Current Balance

    ${Current_Balance}  read excel data by cell name  ${EXCEL_LOC}  ${SHEET_NAME}  ${TESTCASE_NO}  ${CURRENT_BALANCE}
    page should contain  ${Current_Balance}

Validate Total Bill Amount
    page should contain  Total Bill Amount

    ${Total_Bill_Amount}  read excel data by cell name  ${EXCEL_LOC} ${SHEET_NAME}  ${TESTCASE_NO}  ${TOTAL_BILL_AMOUNT}
    page should contain  ${Total_Bill_Amount}

Validate New Charges Due Date
    page should contain  New Charges Due Date

    ${New_Charges_Due Date}  read excel data by cell name  ${EXCEL_LOC}  ${SHEET_NAME}  ${TESTCASE_NO}  ${NEW_CHARGES_DUE_DATE}
    page should contain  ${New_Charges_Due Date}

#Validate Pay Bill button
#    SCROLL_UP
#    page should contain  Pay Bill
#    sleep  2s
#    click link  link=Pay Bill
#    wait until page contains  Make A Payment
#    wait until page contains  Summary of Charges
#    sleep  2s
#
#    page should contain  Make A Payment
#    page should contain  Summary of Charges
#    page should contain  Payment Amount
#    page should contain  Payment Method
#    page should contain  Payment Date
#
#
#Validate Sign up for Auto Pay link
#    wait until element is enabled  link=Sign up for Auto Pay
#    click link  link=Sign up for Auto Pay
#
#    wait until page contains  Sign up for Auto Pay
#    wait until page contains  Payment to be applied
#
#    page should contain  Account
#    page should contain  Payment Method
#    page should contain  Payment to be applied
#    page should contain  Amount
