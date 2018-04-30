*** Settings ***
Library  Selenium2Library  30
Library  String
Resource  ../../../../PO/Common.robot
Resource  ../../../../Properties/Chat_PR.robot

*** Variables ***
${TESTCASE_NO}  TC41
@{CHAT_LINK}  None
${REMOVED_SPACES}  None

${SIGNIN_BTN}  css=html>body>form>button
${URL_PASSWORD_DATA}  k33p1ngITr3al
${URL_PASSWORD}  name=password

*** Keywords ***
User launch Ftr.com application using URL
    Begin Web Test from Excel  ${RES_EXCEL_PATH}  ${SHEET_NAME}  ${TESTCASE_NO}  ${BROWSER_NAME}  ${DOTCOM_URL}
    set window size  1024  768

Validate the display of the URL Generator
    wait until page contains  Social Media Chat Link Generator
    page should contain  Customer Name
    page should contain  Customer Email Address
    page should contain  Customer BTN

Enter Name Email and SM Case ID and Generate the New URL
    wait until element is enabled  id=name
    input text  id=name  John hello
    input text  id=email  john@gmail.com
    input text  id=phoneNumber  4687898765
    click button  id=btnSubmit

Validate Encrypted URL is generated
    wait until page contains  Chat link:
    sleep  3s
    ${CHAT_LINK}  get text  xpath=//html[@id='ng-app']/body/section/div[2]/div/div/h4
    @{CHAT_LINK}  split string  ${CHAT_LINK}  ${EMPTY}
    set global variable  @{CHAT_LINK}

Navigate to the URL prior to 120 Minutes
    open browser  @{CHAT_LINK}[2]  Chrome
    set window size  1024  768
    input password  ${URL_PASSWORD}  ${URL_PASSWORD_DATA}
    click button  ${SIGNIN_BTN}

Validate the functionality of the items on the page
    wait until page contains  Shop
    wait until page contains  Order Status
    sleep  3s
    page should contain  Frontier
    page should contain  My Account
    page should contain  Support
    page should contain  Ticket Status
    page should contain  Privacy Policy