*** Settings ***
Library  Selenium2Library
Library  FTRutil
Resource  ../Selectors/HomePageSelector.robot

*** Keywords ***
Sign In link
    wait until element is enabled  ${SIGNIN_DROPDOWN}
    click link  ${SIGNIN_DROPDOWN}
    sleep  1s

Sign Out
    wait until element is enabled  ${SIGN_OUT}
    sleep  2s
    click link  ${SIGN_OUT}

User Sign In from Excel
    [Arguments]  ${RES_EXCEL_PATH}  ${SHEET_NAME}  ${TESTCASE_NO}  ${USERNAME_SIGNIN}  ${PASSWORD_SIGNIN}

    ${Username_Inp_Ex}  read excel data by cell name  ${RES_EXCEL_PATH}  ${SHEET_NAME}   ${TESTCASE_NO}  ${USERNAME_SIGNIN}
    ${Password_Inp_Ex}  read excel data by cell name  ${RES_EXCEL_PATH}  ${SHEET_NAME}   ${TESTCASE_NO}  ${PASSWORD_SIGNIN}

    wait until element is enabled  ${USERNAME}
    input text  ${USERNAME}  ${Username_Inp_Ex}

    wait until element is enabled  ${PASSWORD}
    input password  ${PASSWORD}  ${Password_Inp_Ex}

    wait until element is enabled  ${USER_SIGNIN_BTN}
    click button  ${USER_SIGNIN_BTN}

#    wait until element is enabled  ${INTERNET}
    wait until page contains  Summary  100s
    wait until page contains  Key Account Info
    sleep  10s

User Sign In
    [Arguments]  ${Username_Inp}  ${Password_Inp}
    wait until element is enabled  ${USERNAME}
    input text  ${USERNAME}  ${Username_Inp}

    wait until element is enabled  ${PASSWORD}
    input password  ${PASSWORD}  ${Password_Inp}

    wait until element is enabled  ${USER_SIGNIN_BTN}
    click button  ${USER_SIGNIN_BTN}
    sleep  3s

Select Residential Tab
    wait until element is enabled  ${RESIDENTIAL_TAB}
    click link  ${RESIDENTIAL_TAB}

Select Business Tab
    wait until element is enabled  ${BUSINESS_TAB}
    click link  ${BUSINESS_TAB}

Select Wholesale Tab
    wait until element is enabled  ${WHOLESALE_TAB}
    click link  ${WHOLESALE_TAB}

Select Multi-Language Toggle for Spanish Language
    wait until page contains  Shop
    wait until page contains  My Account
    wait until element is enabled  ${LANGUAGE_TOGGLE}

    page should contain  Español
    click element  ${LANGUAGE_TOGGLE}

Verify Toggle display English
    wait until page contains  Comprar
    wait until page contains  Mi cuenta
    wait until page contains  Soporte

    wait until element is enabled  ${LANGUAGE_TOGGLE}
    page should contain  English

Verify Residential Home Page
    sleep  2s
    wait until page contains  Shop
    wait until page contains  My Account
    page should contain  Pay Your Bill
    page should contain  Check Your Mail
    page should contain  Check Your Order Status

Search Text
    [Arguments]  ${Search_Inp}
    wait until element is enabled  ${SEARCH_TEXT}

    input text  ${SEARCH_TEXT}  ${Search_Inp}
    click element  ${SEARCH_BTN}

Verify Search Text Results
    [Arguments]  ${Search_Inp}
    wait until page contains  All
    wait until page contains  Help Center

    page should contain  ${Search_Inp}

Enter zipcode and click Check Availability
    [Arguments]  ${RES_EXCEL_PATH}  ${SHEET_NAME}  ${TESTCASE_NO}  ${ZIP_CODE_NUM}
    wait until element is enabled  ${CHANGE_DROPDOWN}
    wait until element is visible  ${CHANGE_DROPDOWN}
    click element  ${CHANGE_DROPDOWN}
    ${Zip_Code1_Inp}  read excel data by cell name  ${RES_EXCEL_PATH}  ${SHEET_NAME}  ${TESTCASE_NO}  ${ZIP_CODE_NUM}
    ${Zip_Code1_Inp}  convert to integer  ${Zip_Code1_Inp}
    wait until element is enabled  ${ZIP_CODE}
    wait until element is visible  ${ZIP_CODE}
    input text  ${ZIP_CODE}  ${Zip_Code1_Inp}
    wait until element is enabled  ${CHEK_AVAILABILITY_BTN}
    click link  ${CHEK_AVAILABILITY_BTN}
    sleep  2s

Verify Geolocation Indicator
    wait until element is enabled  ${GEOLOCATION_INDICATOR}
    page should contain element  ${GEOLOCATION_INDICATOR}

Validate Frontier Logo
    wait until element is enabled  ${FRONTIER_LOGO}
    page should contain element  ${FRONTIER_LOGO}