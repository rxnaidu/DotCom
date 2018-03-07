*** Settings ***
Library  Selenium2Library  60
Resource  ../../PO/Common.robot
Resource  ../../PO/LoginPage.robot
Resource  ../../PO/RES/HomeRes.robot
Resource  ../../PO/RES/AccountSummary.robot
Resource  ../../PO/RES/AddPackage.robot
Resource  ../../Properties/reg_PR.robot

*** Variables ***
${TESTCASE_NO}  TC13
${REGION}  FT
${ORD_ID_DATA}  1

*** Keywords ***
User launch Ftr.com application using URL
    common.Begin Web Test from Excel  ${RES_EXCEL_PATH}  ${SHEET_NAME}  ${TESTCASE_NO}  ${BROWSER_NAME}  ${DOTCOM_URL}
    loginPage.Load from Excel  ${RES_EXCEL_PATH}  ${SHEET_NAME}  ${TESTCASE_NO}  ${DOTCOM_URL_PASSWORD}

Select the Sign In link
    Sign In link

Enter User name and Password and Select Sign In button
    User Sign In from Excel  ${RES_EXCEL_PATH}  ${SHEET_NAME}  ${TESTCASE_NO}  ${USERNAME_SIGNIN}  ${PASSWORD_SIGNIN}

Verify Video Add Shop option is displayed under Account Summary
    Verify Add Video page elements

Select close on auto payment popup
    Close Auto Pay popup for Ecom
    Close Upgrade popup

Click Shop button for Video Upgrade
    Click Shop Button

Click Select button for adding Fios TV Custom Essentials product
    Add Fios TV Custom Essentials Product

Clear saved products from cart
    Click Return to My Account
    Click Shop Button
    Click Clear Cart on popup
    wait until element is enabled  ${FIOS_TV_PREFERRED_HD}
    sleep  5s








