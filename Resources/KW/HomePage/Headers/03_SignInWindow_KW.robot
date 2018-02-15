*** Settings ***
Library  Selenium2Library  60
Resource  ../../../PO/Common.robot
Resource  ../../../PO/LoginPage.robot
Resource  ../../../PO/RES/HomeRes.robot
Resource  ../../../Properties/headers_PR.robot

*** Variables ***
${INTERNET}  //h5[text()='Internet']
${AUTOPAY_POPUP}  id=btnClose
${TESTCASE_NO}  TC03

*** Keywords ***
User launch Ftr.com application using URL
    common.Begin Web Test from Excel  ${RES_EXCEL_PATH}  ${SHEET_NAME}  ${TESTCASE_NO}  ${BROWSER_NAME}  ${DOTCOM_URL}
    loginPage.Load from Excel  ${RES_EXCEL_PATH}  ${SHEET_NAME}  ${TESTCASE_NO}  ${DOTCOM_URL_PASSWORD}

Select the Sign In link
    Sign In link

Enter User name and Password and Select Sign In button
    ${Username_Inp}  read excel data by cell name  ${RES_EXCEL_PATH}  ${SHEET_NAME}   ${TESTCASE_NO}  ${USERNAME_INP}
    ${Password_Inp}  read excel data by cell name  ${RES_EXCEL_PATH}  ${SHEET_NAME}   ${TESTCASE_NO}  ${PASSWORD_INP}

    User Sign In  ${Username_Inp}  ${Password_Inp}

Verify Login page
    wait until page contains  welcome to Frontier!
    sleep  15s
    page should contain  My Account
    page should contain  My Services
    page should contain  Summary

Select Sign Out from righ corner of the screen
#    wait until element is enabled  ${INTERNET}
    sleep  5s
    run keyword and ignore error  click element  ${AUTOPAY_POPUP}
    sleep  2s
    Sign Out

Verify User launch back to Hopme page defaulting to Residential Tab
    Verify Residential home page