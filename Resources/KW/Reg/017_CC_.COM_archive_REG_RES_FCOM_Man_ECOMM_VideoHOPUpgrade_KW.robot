*** Settings ***
Library  Selenium2Library  60
Resource  ../../PO/Common.robot
Resource  ../../PO/LoginPage.robot
Resource  ../../PO/HomePage.robot
Resource  ../../PO/AccountSummary.robot
Resource  ../../PO/EcomUpgradePackage.robot
Resource  ../../Properties/reg_PR.robot

*** Variables ***
${TESTCASE_NO}  TC10

*** Keywords ***
User launch Ftr.com application using URL
    Begin Web Test from Excel  ${EXCEL_LOC}  ${SHEET_NAME}  ${TESTCASE_NO}  ${BROWSER_NAME}

Select the Sign In link
    Sign In link

Enter User name and Password and Select Sign In button
    User Sign In from Excel  ${EXCEL_LOC}  ${SHEET_NAME}  ${TESTCASE_NO}  ${USERNAME_SIGNIN}  ${PASSWORD_SIGNIN}

Select Account Number from dropdown
    Select Account Number  ${EXCEL_LOC}  ${SHEET_NAME}  ${TESTCASE_NO}  ${ACT_NUM}

Verify user launches into Self Service Portal successfully
    Validate Video Upgrade button

Select close on auto payment popup
    Verify page elements
    Close Auto Pay popup
    Close Upgrade popup

Click on Upgrade button for Video
    Click Video Upgrade Button

Click on [Upgrade] button for Fios TV Extreme
    upgrade fios tv extreme hd product

#Click on Yes
#    Click on Yes for router

Enter [Can be Reached] number and click [Update]
    Update Can be reached number

Enter initial and click Complete order
    Entr Initials
#    Click Complete order Button  ${RES_EXCEL_PATH}  ${SHEET_NAME}  ${TESTCASE_NO}  ${ORDER_ID}
