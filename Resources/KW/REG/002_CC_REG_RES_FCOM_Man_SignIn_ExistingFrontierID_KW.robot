*** Settings ***
Library  Selenium2Library  30
Resource  ../../PO/Common/common.robot
Resource  ../../PO/Login/loginPage.robot
Resource  ../../PO/RES/Landing/homePage.robot

*** Variables ***
#Excel details for reading data
${RES_EXCEL_PATH}  C:/Development/Robot/DotCom/Resources/TestData/Resisdential.xlsx
${SHEET_NAME}  REG
${TESTCASE_NO}  TC01
${USERNAME_SIGNIN}  SignIn_Username
${PASSWORD_SIGNIN}  SignIn_Password
${BROWSER_NAME}  Browser
${DOTCOM_URL}  DotCom_Url
${DOTCOM_URL_PASSWORD}  DotCom_Url_Password

*** Keywords ***
User launch Ftr.com application using URL
    common.Begin Web Test  ${RES_EXCEL_PATH}  ${SHEET_NAME}  ${TESTCASE_NO}  ${BROWSER_NAME}  ${DOTCOM_URL}
    loginPage.Load  ${RES_EXCEL_PATH}  ${SHEET_NAME}  ${TESTCASE_NO}  ${DOTCOM_URL_PASSWORD}

Select the Sign In link
    homePage.Sign In link

Enter User name and Password and Select Sign In button
    homePage.User Sign In  ${RES_EXCEL_PATH}  ${SHEET_NAME}  ${TESTCASE_NO}  ${USERNAME_SIGNIN}  ${PASSWORD_SIGNIN}

Verify user launches into Self Service Portal successfully
    wait until page contains  welcome to Frontier!
    page should contain  welcome to Frontier!






