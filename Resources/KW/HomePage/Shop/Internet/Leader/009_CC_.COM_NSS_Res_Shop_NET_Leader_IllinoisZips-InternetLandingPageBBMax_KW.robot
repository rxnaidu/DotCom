*** Settings ***
Library  Selenium2Library  30
Resource  ../../../../../PO/Common.robot
Resource  ../../../../../PO/LoginPage.robot
Resource  ../../../../../PO/HomePage.robot
Resource  ../../../../../PO/HomePageHeader.robot
Resource  ../../../../../Properties/Shop_PR.robot

*** Variables ***
${TESTCASE_NO}  TC43

*** Keywords ***
User launch Ftr.com application using URL
    Begin Web Test from Excel  ${RES_EXCEL_PATH}  ${SHEET_NAME}  ${TESTCASE_NO}  ${BROWSER_NAME}  ${DOTCOM_URL}
    Load from Excel  ${RES_EXCEL_PATH}  ${SHEET_NAME}  ${TESTCASE_NO}  ${DOTCOM_URL_PASSWORD}

Select Interner from Shop Tab
    Mouse over on Shop Tab
    Select Internet option

Change location to zip code
    Enter zipcode and click Check Availability  ${RES_EXCEL_PATH}  ${SHEET_NAME}  ${TESTCASE_NO}  ${ZIP_CODE_NUM1}

Validate Tel Number
    Validate Internet page Tel No

Validate Broadband Max Broadband Ultra and Broadband Ultimate
    wait until page contains  Broadband Ultra

    page should contain  Broadband Ultra

#Click Simply Broadbad Ultra and return to products page
#    Select Simply BB Max
#    go back
#
#Click Simply Broadbad Ultra and return to products page
#    Select Simply BB Ultimate
#    go back

Click Simply Broadbad Ultra and return to products page
    Select Simply BB Ultra
    go back