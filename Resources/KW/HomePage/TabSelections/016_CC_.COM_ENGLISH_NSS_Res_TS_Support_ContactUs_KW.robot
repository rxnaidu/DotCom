*** Settings ***
Library  Selenium2Library  30
Library  String
Resource  ../../../PO/Common.robot
Resource  ../../../PO/LoginPage.robot
Resource  ../../../PO/HomePageHeader.robot
Resource  ../../../Properties/tabSelections_PR.robot

*** Variables ***
${TESTCASE_NO}  TC16

*** Keywords ***
User launch Ftr.com application using URL
    Begin Web Test from Excel  ${EXCEL_LOC}  ${SHEET_NAME}  ${TESTCASE_NO}  ${BROWSER_NAME}

Click on the Tab selections as follows: Support> Contact Us
    Mouse over on Support Tab
    Select Contact Us option

Verify URL changes to Contact Us
    wait until page contains  Contact
    page should contain  Contact
#    ${Contact_Us_Url}  read excel data by cell name  ${RES_EXCEL_PATH}  ${SHEET_NAME}  ${TESTCASE_NO}  ${CONTACT_US_URL}
#    Encode String To Bytes  ${Contact_Us_Url}  ASCII
#    wait until page contains  Chat Live
#    location should be  ${Contact_Us_Url}
