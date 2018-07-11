*** Settings ***
Library  Selenium2Library  30
Resource  ../../../../PO/Common.robot
Resource  ../../../../PO/LoginPage.robot
Resource  ../../../../PO/HomePage.robot
Resource  ../../../../PO/Chat.robot
Resource  ../../../../PO/HomePageHeader.robot
Resource  ../../../../Properties/Shop_PR.robot

*** Variables ***
${TESTCASE_NO}  TC24

*** Keywords ***
User launch Ftr.com application using URL
    Begin Web Test from Excel  ${EXCEL_LOC}  ${SHEET_NAME}  ${TESTCASE_NO}  ${BROWSER_NAME}

Select the Frontier Secure option from the Shop Category Drop down
    Mouse over on Shop Tab
    Select Frontier Secure option

Click the location module and enter the zip code 14626 and Click Check Availability
    Enter zipcode and click Check Availability  ${EXCEL_LOC}  ${SHEET_NAME}  ${TESTCASE_NO}  ${ZIP_CODE_NUM1}

Validate Floating Live Chat link is present on the page
    Validate Floating Chat link

Validate Frontier logo at the top left corner of the chat window
    validate frontier logo

Validate Live Chat link which is presend just above the list of products on the page
    validate chat link near banner

Validate Live Chat link which is present bottom section of the page
    validate chat link near footer

Click the location module and enter the zip code 61802 and Click Check Availability
    Enter zipcode and click Check Availability  ${RES_EXCEL_PATH}  ${SHEET_NAME}  ${TESTCASE_NO}  ${ZIP_CODE_NUM2}

Click the location module and enter the zip code 06515 and Click Check Availability
    Enter zipcode and click Check Availability  ${RES_EXCEL_PATH}  ${SHEET_NAME}  ${TESTCASE_NO}  ${ZIP_CODE_NUM3}
