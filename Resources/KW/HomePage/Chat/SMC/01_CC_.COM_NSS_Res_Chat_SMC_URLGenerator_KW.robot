*** Settings ***
Library  Selenium2Library  30
Library  String
Resource  ../../../../PO/Common.robot
Resource  ../../../../Properties/Chat_PR.robot

*** Variables ***
${TESTCASE_NO}  TC39
@{CHAT_LINK}  None
${REMOVED_SPACES}  None

*** Keywords ***
User launch Ftr.com application using URL
    Launch SMS URL  ${EXCEL_LOC}  ${SHEET_NAME}  ${TESTCASE_NO}  ${BROWSER_NAME}

Validate the display of the URL Generator
    wait until page contains  Social Media Chat Link Generator
    page should contain  Customer Name
    page should contain  Customer Email Address
    page should contain  Customer BTN