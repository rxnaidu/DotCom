*** Settings ***
Library  Selenium2Library  60
Library  String
Resource  ../../PO/Common.robot
Resource  ../../PO/LoginPage.robot
Resource  ../../PO/RES/HomeRes.robot
Resource  ../../PO/RES/AccountSummary.robot
Resource  ../../PO/RES/UpgradePackage.robot
Resource  ../../Properties/reg_PR.robot

*** Variables ***
${TESTCASE_NO}  TC09

*** Keywords ***
User launch Ftr.com application using URL
    common.Begin Web Test from Excel  ${RES_EXCEL_PATH}  ${SHEET_NAME}  ${TESTCASE_NO}  ${BROWSER_NAME}  ${DOTCOM_URL}
    loginPage.Load from Excel  ${RES_EXCEL_PATH}  ${SHEET_NAME}  ${TESTCASE_NO}  ${DOTCOM_URL_PASSWORD}

Select the Sign In link
    Sign In link

Enter User name and Password and Select Sign In button
    User Sign In from Excel  ${RES_EXCEL_PATH}  ${SHEET_NAME}  ${TESTCASE_NO}  ${USERNAME_SIGNIN}  ${PASSWORD_SIGNIN}

Select Account Number from dropdown
    Select Account Number  ${RES_EXCEL_PATH}  ${SHEET_NAME}  ${TESTCASE_NO}  ${ACT_NUM}

Verify user launches into Self Service Portal successfully
    Validate Internet Upgrade button

Select close on auto payment popup
    accountSummary.Verify page elements
    Close Auto Pay popup

Click on Upgrade button for Internet
    Click Internet Upgrade Button

Click on [Upgrade] button for selecting Fios Internet 75/75 product
    Upgrade Fios Internet 75/75 Mbps Product

Click on Yes for router selection
    Click on Yes for router

Enter [Can be Reached] number and click [Update]
    Update Can be reached number

Enter initial and click Complete order
    Entr Initials
#    Click Complete order Button  ${RES_EXCEL_PATH}  ${SHEET_NAME}  ${TESTCASE_NO}  ${ORDER_ID}


