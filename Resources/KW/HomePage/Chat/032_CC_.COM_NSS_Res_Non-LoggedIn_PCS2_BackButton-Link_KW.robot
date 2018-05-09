*** Settings ***
Library  Selenium2Library  30
Resource  ../../../PO/Common.robot
Resource  ../../../PO/LoginPage.robot
Resource  ../../../PO/HomePageHeader.robot
Resource  ../../../PO/Chat.robot
Resource  ../../../Properties/Chat_PR.robot

*** Variables ***
${TESTCASE_NO}  TC32

*** Keywords ***
User launch Ftr.com application using URL
    Begin Web Test from Excel  ${RES_EXCEL_PATH}  ${SHEET_NAME}  ${TESTCASE_NO}  ${BROWSER_NAME}  ${DOTCOM_URL}
    Load from Excel  ${RES_EXCEL_PATH}  ${SHEET_NAME}  ${TESTCASE_NO}  ${DOTCOM_URL_PASSWORD}

Select Internet from Shop Tab
    Mouse over on Shop Tab
    Select Internet option

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

Validate the display of the Back button or link on the Pre-Chat Survey Step2
    Validate Back Nav Link
