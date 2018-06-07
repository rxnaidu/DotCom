*** Settings ***
Library  Selenium2Library  30
Resource  ../../../../../PO/Common.robot
Resource  ../../../../../PO/LoginPage.robot
Resource  ../../../../../PO/HomePage.robot
Resource  ../../../../../PO/HomePageHeader.robot
Resource  ../../../../../Properties/Shop_PR.robot

*** Variables ***
${TESTCASE_NO}  TC47

*** Keywords ***
User launch Ftr.com application using URL
    Begin Web Test from Excel  ${RES_EXCEL_PATH}  ${SHEET_NAME}  ${TESTCASE_NO}  ${BROWSER_NAME}  ${DOTCOM_URL}
    Load from Excel  ${RES_EXCEL_PATH}  ${SHEET_NAME}  ${TESTCASE_NO}  ${DOTCOM_URL_PASSWORD}

Select Interner from Shop Tab
    Mouse over on Shop Tab
    Select Internet option

Change location to zip code1
    Enter zipcode and click Check Availability  ${RES_EXCEL_PATH}  ${SHEET_NAME}  ${TESTCASE_NO}  ${ZIP_CODE_NUM1}
    #14626

Select Learn More button for BB Ultra Product
    Select Simply BB Ultra

Validate FCC BB Disclosure Link
    wait until page contains  FCC Broadband Disclosure Document
    page should contain  FCC Broadband Disclosure Document

Click FCC Broadband Disclosure Document link
    Select FCC BB Diclosure Document

Validate the Form allows the User to Geolocate
    wait until element is enabled  css=.hidden-print #locationDropdown
    page should contain element  css=.hidden-print #locationDropdown

Select product from Drop down list
    wait until element is enabled  css=#selectedProductOption
    select from list by label  css=#selectedProductOption  Simply BB Ultra (Copper)

Validate correct Month to Month Pricing for the Product Selected
    page should contain  Monthly Charge for month-to-month plan