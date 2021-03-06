*** Settings ***
Library  Selenium2Library  60
Library  String
Resource  ../../../PO/Common.robot
Resource  ../../../PO/LoginPage.robot
Resource  ../../../PO/HomePageFooter.robot
Resource  ../../../Properties/footers_PR.robot

*** Variables ***
${TESTCASE_NO}  TC02

*** Keywords ***
User launch Ftr.com application using URL
    Begin Web Test from Excel  ${EXCEL_LOC}  ${SHEET_NAME}  ${TESTCASE_NO}  ${BROWSER_NAME}

Navigate to bottom of the Footer home page and click: My Account > Pay Bills
    Select Pay Bill option from Footer

Verify URL changes to Pay Bills Page
    wait until page contains  Sign In
    page should contain  Sign In
#    ${EXPECTED_URL}  read excel data by cell name   ${RES_EXCEL_PATH}  ${SHEET_NAME}   ${TESTCASE_NO}  ${PAY_BILLS_URL}
#    Verify currnt URL  ${EXPECTED_URL}

Navigate to bottom of the Footer home page and click: My Account > Check Email
    Select Check Email option from Footer

Verify URL changes to Check Email Page
    wait until page contains  Email Address
    page should contain  Email Address
#    ${EXPECTED_URL}  read excel data by cell name   ${RES_EXCEL_PATH}  ${SHEET_NAME}   ${TESTCASE_NO}  ${CHECK_EMAIL_URL}
#    Verify currnt URL  ${EXPECTED_URL}

Navigate to bottom of the Footer home page and click: My Account > Manage Account
    Select Manage Account option from Footer

Verify URL changes to Manage Account Page
    wait until page contains  Sign In
    page should contain  Sign In
#    ${EXPECTED_URL}  read excel data by cell name   ${RES_EXCEL_PATH}  ${SHEET_NAME}   ${TESTCASE_NO}  ${MANAGE_ACCOUNT_URL}
#    Verify currnt URL  ${EXPECTED_URL}

Navigate to bottom of the Footer home page and click: My Account > MyFrontier App
    Select MyFrontier App option from Footer

Verify URL changes to MyFrontier App Page
    wait until page contains  MyFrontier
    page should contain  MyFrontier
#    ${EXPECTED_URL}  read excel data by cell name   ${RES_EXCEL_PATH}  ${SHEET_NAME}   ${TESTCASE_NO}  ${MYFRONTIER_APP}
#    Verify currnt URL  ${EXPECTED_URL}

Navigate to bottom of the Footer home page and click: My Account > Watch TV
    Select Watch TV option from Footer

Verify URL changes to Watch TV Page
    wait until page contains  Watch TV
    page should contain  Watch TV
#    ${EXPECTED_URL}  read excel data by cell name   ${RES_EXCEL_PATH}  ${SHEET_NAME}   ${TESTCASE_NO}  ${WATCH_TV_URL}
#    Verify currnt URL  ${EXPECTED_URL}

#Navigate to bottom of the Footer home page and click: My Account > Enterprise Accounts
#    homePage.Select Enterprise Accounts option from Footer
#
#Verify URL changes to Moving Page
#    wait until page contains
#    page should contain
##    ${EXPECTED_URL}  read excel data by cell name   ${RES_EXCEL_PATH}  ${SHEET_NAME}   ${TESTCASE_NO}  ${ENTERPRISE_ACCOUNTS_URL}
##    Verify currnt URL  ${EXPECTED_URL}




