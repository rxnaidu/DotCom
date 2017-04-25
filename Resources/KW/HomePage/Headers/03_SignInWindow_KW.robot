*** Settings ***
Library  Selenium2Library  60
Resource  ../../../PO/Login/loginPage.robot
Resource  ../../../PO/RES/Landing/homePage.robot
Resource  ../../../PO/Common/common.robot
Resource  ../../../Properties/Headers_PR.robot

*** Variables ***
${INTERNET}  //h5[text()='Internet']
${TESTCASE_NO}  TC03

*** Keywords ***
User launch Ftr.com application using URL
    common.Begin Web Test from Excel  ${RES_EXCEL_PATH}  ${SHEET_NAME}  ${TESTCASE_NO}  ${BROWSER_NAME}  ${DOTCOM_URL}
    loginPage.Load from Excel  ${RES_EXCEL_PATH}  ${SHEET_NAME}  ${TESTCASE_NO}  ${DOTCOM_URL_PASSWORD}

Select the Sign In link
    homePage.Sign In link

Enter User name and Password and Select Sign In button
    ${Username_Inp}  read_cell_data_by_Header_name   ${RES_EXCEL_PATH}  ${SHEET_NAME}   ${TESTCASE_NO}  ${USERNAME_INP}
    ${Password_Inp}  read_cell_data_by_Header_name   ${RES_EXCEL_PATH}  ${SHEET_NAME}   ${TESTCASE_NO}  ${PASSWORD_INP}

    homePage.User Sign In  ${Username_Inp}  ${Password_Inp}

    wait until page contains  welcome to Frontier!

Select Sign Out from righ corner of the screen
    wait until element is enabled  ${INTERNET}
    homePage.Sign Out

Verify User launch back to Hopme page defaulting to Residential Tab
    homePage.Verify Residential home page