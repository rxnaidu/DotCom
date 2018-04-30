*** Settings ***
Library  Selenium2Library  30
Resource  ../../../PO/Common.robot
Resource  ../../../PO/LoginPage.robot
Resource  ../../../PO/HomePage.robot
Resource  ../../../PO/HomePageHeader.robot
Resource  ../../../Properties/MultiLang_PR.robot

*** Variables ***
${TESTCASE_NO}  TC01

*** Keywords ***
User launch Ftr.com application using URL
    Begin Web Test from Excel  ${RES_EXCEL_PATH}  ${SHEET_NAME}  ${TESTCASE_NO}  ${BROWSER_NAME}  ${DOTCOM_URL}
    Load from Excel  ${RES_EXCEL_PATH}  ${SHEET_NAME}  ${TESTCASE_NO}  ${DOTCOM_URL_PASSWORD}

Select the new Multi-Language Toggle on the Residential Home page
    Select Multi-Language Toggle for Spanish Language

Home page should display in Spanish and toggle display 'English'
    Verify Toggle display English

Navigate to Trouble Ticket Status and verify Spanish text is displayed
    Mouse over on Support Tab-Spanish
    Select Trouble Ticket Status option-Spanish
    Verify Spanish Text is displayed on Trouble Ticket Status page

Navigate to Order Status and verify Spanish text is displayed
    Mouse over on Support Tab-Spanish
    Select Order Status option-Spanish
    Verify Spanish Text is displayed on Order Status page

Validate error message
#    wait until element is enabled  id=orderNumber
#    input text  id=orderNumber  R12345
#    wait until element is enabled  id=zipCode
#    scroll page to locator view  id=zipCode
#    input text  id=zipCode  76087
    wait until element is enabled  id=lastName
    scroll page to locator view  id=lastName
    input text  id=lastName  jana


    click element  xpath=//span[@id='recaptcha-anchor']/div[5]





