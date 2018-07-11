*** Settings ***
Library  Selenium2Library  30
Resource  ../../../../PO/Common.robot
Resource  ../../../../PO/LoginPage.robot
Resource  ../../../../PO/Chat.robot
Resource  ../../../../PO/HomePageHeader.robot
Resource  ../../../../Properties/Shop_PR.robot

*** Variables ***
${TESTCASE_NO}  TC04

*** Keywords ***
User launch Ftr.com application using URL
    Begin Web Test from Excel  ${EXCEL_LOC}  ${SHEET_NAME}  ${TESTCASE_NO}  ${BROWSER_NAME}

Select the Bundle option from the Shop Category Drop down
    Mouse over on Shop Tab
    Select Bundle option

Select the floating Chat ICON and validate Overlay display
    Click Chat
    Validate Residential Radio on Chat
    Validate Business Radio on Chat