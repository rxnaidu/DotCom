*** Settings ***
Library  Selenium2Library  30
Resource  ../../../../../PO/Common.robot
Resource  ../../../../../PO/LoginPage.robot
Resource  ../../../../../PO/HomePage.robot
Resource  ../../../../../PO/HomePageHeader.robot
Resource  ../../../../../PO/Chat.robot
Resource  ../../../../../Properties/Shop_PR.robot

*** Variables ***
${TESTCASE_NO}  TC35

*** Keywords ***
User launch Ftr.com application using URL
    Begin Web Test from Excel  ${EXCEL_LOC}  ${SHEET_NAME}  ${TESTCASE_NO}  ${BROWSER_NAME}

Select Interner from Shop Tab
    Mouse over on Shop Tab
    Select Internet option

Change location to zip code
    Enter zipcode and click Check Availability  ${EXCEL_LOC}  ${SHEET_NAME}  ${TESTCASE_NO}  ${ZIP_CODE_NUM1}

Validate Tel Number
    Validate Internet page Tel No

Validate Click to Chat
    Validate Floating Chat link
