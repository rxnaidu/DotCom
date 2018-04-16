*** Settings ***
Library  Selenium2Library  30
Resource  ../../../PO/Common.robot
Resource  ../../../PO/LoginPage.robot
Resource  ../../../PO/HomePage.robot
Resource  ../../../PO/Chat.robot
Resource  ../../../Properties/Chat_PR.robot

*** Variables ***
${TESTCASE_NO}  TC22

*** Keywords ***
User launch Ftr.com application using URL
    Begin Web Test from Excel  ${RES_EXCEL_PATH}  ${SHEET_NAME}  ${TESTCASE_NO}  ${BROWSER_NAME}  ${DOTCOM_URL}
    Load from Excel  ${RES_EXCEL_PATH}  ${SHEET_NAME}  ${TESTCASE_NO}  ${DOTCOM_URL_PASSWORD}

Select the new Multi-Language Toggle on the Residential Home page
    Select Multi-Language Toggle for Spanish Language

Home page should display in Spanish and toggle display 'English'
    Verify Toggle display English

Select the floating Chat ICON
    Click Chat

Select Residential on Customer Type
    sleep  2s
    Click Residential Radio on Chat

Select Repair on Support Type
    sleep  2s
    Click Repair Radio on Chat

Select Internet on Service Type
    sleep  2s
    Click Internet Radio on Chat

Select Fios Internet Product Type
    sleep  2s
    Click Fios Internet Radio on Chat

Select PCS1 Next Button
    sleep  2s
    Click PCS1 Next Button

Enter Name Email Phone for Non Sign In
    Enter Name
    Enter Email
    Enter Phone

Select Next button on Pre-Chat Survey Step2
    sleep  2s
    click PCS2 Next button

Validate the display of the Pre-Chat Survey Step3
    page should contain  How may we help you?
