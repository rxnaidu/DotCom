*** Settings ***
Library  Selenium2Library  30
Resource  ../../../PO/Common.robot
Resource  ../../../PO/LoginPage.robot
Resource  ../../../PO/HomePageHeader.robot
Resource  ../../../PO/Chat.robot
Resource  ../../../Properties/Chat_PR.robot

*** Variables ***
${TESTCASE_NO}  TC28

*** Keywords ***
User launch Ftr.com application using URL
    Begin Web Test from Excel  ${EXCEL_LOC}  ${SHEET_NAME}  ${TESTCASE_NO}  ${BROWSER_NAME}

Select Moving from Shop Tab
    Mouse over on Shop Tab
    Select Moving option

Select the floating Chat ICON
    Click Chat

Select Residential on Customer Type
    sleep  2s
    Click Residential Radio on Chat

Select Technical Support on Support Type
    sleep  2s
    Click Technical Support Radio on Chat

Select Internet on Service Type
    sleep  2s
    Click Internet Radio on Chat

Select Fios Internet Product Type
    sleep  2s
    Click Fios Internet Radio on Chat

Select Next Button
    sleep  2s
    Click PCS1 Next Button

Enter invalid Name Email Phone for Non Sign In
    Enter Name
    Enter invalid Email
    Enter Phone
    Click PCS2 Next Button

Validate Error message for invalid Name Email Phone
    page should contain  Please ensure you have filled out all field(s).
