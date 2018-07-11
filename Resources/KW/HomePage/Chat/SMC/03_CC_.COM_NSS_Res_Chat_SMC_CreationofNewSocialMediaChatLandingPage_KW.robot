*** Settings ***
Library  Selenium2Library  30
Library  String
Resource  ../../../../PO/Common.robot
Resource  ../../../../Properties/Chat_PR.robot

*** Variables ***
${TESTCASE_NO}  TC40
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
    log  @{CHAT_LINK}[2]
    page should contain  Social Media Chat Link Generator
