*** Settings ***
Library  Selenium2Library  60
Resource  ../../../PO/Common.robot
Resource  ../../../PO/LoginPage.robot
Resource  ../../../PO/HomePage.robot
Resource  ../../../Properties/headers_PR.robot

*** Variables ***
${TESTCASE_NO}  TC01

*** Keywords ***

User launch Ftr.com application using URL
    common.Begin Web Test from Excel  ${RES_EXCEL_PATH}  ${SHEET_NAME}  ${TESTCASE_NO}  ${BROWSER_NAME}  ${DOTCOM_URL}
    loginPage.Load from Excel  ${RES_EXCEL_PATH}  ${SHEET_NAME}  ${TESTCASE_NO}  ${DOTCOM_URL_PASSWORD}

Select change option from header
    wait until element is enabled  ${CHANGE_DROPDOWN}
    click element  ${CHANGE_DROPDOWN}

Enter Zip Code and select Check Availability Button
    ${Zip_Code1_Inp}  read excel data by cell name  ${RES_EXCEL_PATH}  ${SHEET_NAME}  ${TESTCASE_NO}  ${ZIP_CODE_NUM1}
    input text  ${ZIP_CODE}  ${Zip_Code1_Inp}

    wait until element is enabled  ${CHEK_AVAILABILITY_BTN}
    click link  ${CHEK_AVAILABILITY_BTN}

Verify header now changes to "Plano,TX"
    ${Expected_Location_Text}  read excel data by cell name  ${RES_EXCEL_PATH}  ${SHEET_NAME}  ${TESTCASE_NO}  ${ZIP_CODE1_TEXT}

    wait until element is enabled  ${ZIP_CODE_LOCATION}
    wait until element is visible  ${ZIP_CODE_LOCATION}
    sleep  2s
    ${Actual_Location_Text}  get text  ${ZIP_CODE_LOCATION}

    log  ${Expected_Location_Text}
    log  ${Actual_Location_Text}

    should be equal   ${Expected_Location_Text}  ${Actual_Location_Text}

Select Change link again and enter zip code and select Check Availability Button
    ${Zip_Code2_Inp}  read excel data by cell name  ${RES_EXCEL_PATH}  ${SHEET_NAME}  ${TESTCASE_NO}  ${ZIP_CODE_NUM2}

    wait until element is enabled  ${CHANGE_DROPDOWN}
    click element  ${CHANGE_DROPDOWN}

    input text  ${ZIP_CODE}  ${Zip_Code2_Inp}
    click link  ${CHEK_AVAILABILITY_BTN}

Verify black header now changes to 'Fairport NY'
    ${Expected_Location_Text}  read excel data by cell name  ${RES_EXCEL_PATH}  ${SHEET_NAME}  ${TESTCASE_NO}  ${ZIP_CODE2_TEXT}

    wait until element is enabled  ${ZIP_CODE_LOCATION}
    wait until element is visible  ${ZIP_CODE_LOCATION}
    sleep  2s
    ${Actual_Location_Text}  get text  ${ZIP_CODE_LOCATION}

    log  ${Expected_Location_Text}
    log  ${Actual_Location_Text}

    should be equal   ${Expected_Location_Text}  ${Actual_Location_Text}










