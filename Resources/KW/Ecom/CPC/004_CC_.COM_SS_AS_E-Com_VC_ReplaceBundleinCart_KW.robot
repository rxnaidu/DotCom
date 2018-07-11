*** Settings ***
Library  Selenium2Library  60
Resource  ../../../PO/Common.robot
Resource  ../../../PO/LoginPage.robot
Resource  ../../../PO/HomePage.robot
Resource  ../../../PO/AccountSummary.robot
Resource  ../../../PO/EcomAddPackage.robot
Resource  ../../../Properties/Ecom_PR.robot

*** Variables ***
${TESTCASE_NO}  TC09
${REGION}  FT
${ORD_ID_DATA}  1

*** Keywords ***
User launch Ftr.com application using URL
    Begin Web Test from Excel  ${EXCEL_LOC}  ${SHEET_NAME}  ${TESTCASE_NO}  ${BROWSER_NAME}

Select the Sign In link
    Sign In link

Enter User name and Password and Select Sign In button
    User Sign In from Excel  ${EXCEL_LOC}  ${SHEET_NAME}  ${TESTCASE_NO}  ${USERNAME_SIGNIN}  ${PASSWORD_SIGNIN}

Verify Video Add Shop option is displayed under Account Summary
    Verify Add Video page elements

Select close on auto payment popup
    Close Auto Pay popup
    Close Upgrade popup

Click Shop button for Video Upgrade
    Click Shop Button

Click Select button for adding Fios TV Preferred HD product
    Add Fios TV Preferred HD Product

Validate Fios TV Preferred HD is added to Order Summary Page
    wait until page contains  Triple Play: Internet + Video + Voice
    page should contain  TV Preferred HD

Select Back button and replace Fios TV Extreme HD product
    click back navigation
    wait until element is enabled  ${FIOS_TV_PREFERRED_HD}
    Add Fios TV Extreme HD Product

Validate Fios TV Extreme HD is added to Order Summary Page
    wait until page contains  Triple Play: Internet + Video + Voice
    page should contain  TV Extreme HD
    page should contain  FiOS Digital Voice

Clear saved products from cart
    Click Return to My Account
    Click Shop Button
    Click Clear Cart on popup
    wait until element is enabled  ${FIOS_TV_PREFERRED_HD}  3m
    sleep  2s








