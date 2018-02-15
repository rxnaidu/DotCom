*** Settings ***
Library  Selenium2Library  60
Resource  ../../PO/Common.robot
Resource  ../../PO/LoginPage.robot
Resource  ../../PO/RES/HomeRes.robot
Resource  ../../PO/RES/AccountSummary.robot
Resource  ../../PO/RES/AddVideoPackage.robot
Resource  ../../Properties/reg_PR.robot

*** Variables ***
${TESTCASE_NO}  TC12
${REGION}  FT
${ORD_ID_DATA}  1

*** Keywords ***
User launch Ftr.com application using URL
    common.Begin Web Test from Excel  ${RES_EXCEL_PATH}  ${SHEET_NAME}  ${TESTCASE_NO}  ${BROWSER_NAME}  ${DOTCOM_URL}
    loginPage.Load from Excel  ${RES_EXCEL_PATH}  ${SHEET_NAME}  ${TESTCASE_NO}  ${DOTCOM_URL_PASSWORD}

Select the Sign In link
    Sign In link

Enter User name and Password and Select Sign In button
    User Sign In from Excel  ${RES_EXCEL_PATH}  ${SHEET_NAME}  ${TESTCASE_NO}  ${USERNAME_SIGNIN}  ${PASSWORD_SIGNIN}

Verify Vido upgrage option is displayed under Account Summary
    Verify Video upgrage page elements

Select close on auto payment popup
    Close Auto Pay popup

Click Shop button for Video Upgrade
    Select Shop Button

Click Select button for for adding Fios TV Preferred HD product
    Add Fios TV Preferred HD Product

Add Premium Channels and Click Continue on Add Premium Channels page
    Click Continue on Add Premium Channels page

Select Fios Quantum TV Enhanced DVR Service & Equipment option
    Click Select for Fios Quantum TV Enhanced

Select Continue button on Select Recording Equipment and Services page
    Click Continue on Select Recording Equipment and Services page

Click Select option for Fios Quantum Gateway Router on Confirm your router page
    Select Fios Quantum Gateway Router

Validate the display of the Order Summary section on the Reivew page
    Vefiry Order Summary section

Select Checkout option
    click checkout

Enter Can be reached number on Contact Information popup
    Update Contact Information

Validate Review page elements
    Verify Review page elements

Enter initial and click Complete order
    Update Initials
    Click Complete order

Validate order id details
    Verify order id details

Update orderid in Access Database Table for deactivation

    update_excel_data_by_cell_name   ${RES_EXCEL_PATH}  ${SHEET_NAME}  ${TESTCASE_NO}  ${ORDER_ID}  ${ORD_ID_DATA}

    update orderid in accessdb  ${REGION}  ${ORD_ID_DATA}







