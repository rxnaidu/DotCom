*** Settings ***
Library  Selenium2Library  30
Resource  ../../PO/Common/common.robot
Resource  ../../PO/Login/loginPage.robot
Resource  ../../PO/RES/Landing/homePage.robot
Resource  ../../Properties/reg_PR.robot

*** Variables ***
${TESTCASE_NO}  TC01

*** Keywords ***
User launch Ftr.com application using URL
    common.Begin Web Test from Excel  ${RES_EXCEL_PATH}  ${SHEET_NAME}  ${TESTCASE_NO}  ${BROWSER_NAME}  ${DOTCOM_URL}
    loginPage.Load from Excel  ${RES_EXCEL_PATH}  ${SHEET_NAME}  ${TESTCASE_NO}  ${DOTCOM_URL_PASSWORD}

Select the Sign In link
    homePage.Sign In link

Enter User name and Password and Select Sign In button
    homePage.User Sign In from Excel  ${RES_EXCEL_PATH}  ${SHEET_NAME}  ${TESTCASE_NO}  ${USERNAME_SIGNIN}  ${PASSWORD_SIGNIN}

Verify user launches into Self Service Portal successfully
    wait until page contains  welcome to Frontier!
    page should contain  welcome to Frontier!






