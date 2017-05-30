*** Settings ***
Library  Selenium2Library  30
Resource  ../../PO/Common/common.robot
Resource  ../../PO/Login/loginPage.robot
Resource  ../../PO/RES/Landing/homePage.robot

*** Variables ***
#Excel details for reading data
${RES_EXCEL_PATH}  C:/Development/Robot/DotCom/Resources/TestData/Resisdential.xlsx
${SHEET_NAME}  REG
${TESTCASE_NO}  TC11
${BROWSER_NAME}  Browser
${CPNI_URL}  CPNI_Url
${DOTCOM_URL_PASSWORD}  DotCom_Url_Password

${USERNAME_SIGNIN}  SignIn_Username
${PASSWORD_SIGNIN}  SignIn_Password

*** Keywords ***
User launch Ftr.com application using URL

    common.Begin Web Test from Excel  ${RES_EXCEL_PATH}  ${SHEET_NAME}  ${TESTCASE_NO}  ${BROWSER_NAME}  ${CPNI_URL}
    loginPage.Load from Excel  ${RES_EXCEL_PATH}  ${SHEET_NAME}  ${TESTCASE_NO}  ${DOTCOM_URL_PASSWORD}

Verify CPNI page details
    page should contain  Shop
    page should contain  My Account
    page should contain  Support
