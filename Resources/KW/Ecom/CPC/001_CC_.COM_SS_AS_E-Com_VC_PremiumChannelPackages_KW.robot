*** Settings ***
Library  Selenium2Library  60
Resource  ../../../PO/Common.robot
Resource  ../../../PO/LoginPage.robot
Resource  ../../../PO/RES/HomeRes.robot
Resource  ../../../PO/RES/AccountSummary.robot
Resource  ../../../PO/RES/AddPackage.robot
Resource  ../../../Properties/Ecom_PR.robot

*** Variables ***
${TESTCASE_NO}  TC08
${REGION}  FT
${ORD_ID_DATA}  1

*** Keywords ***
User launch Ftr.com application using URL
    Begin Web Test from Excel  ${RES_EXCEL_PATH}  ${SHEET_NAME}  ${TESTCASE_NO}  ${BROWSER_NAME}  ${DOTCOM_URL}
    Load from Excel  ${RES_EXCEL_PATH}  ${SHEET_NAME}  ${TESTCASE_NO}  ${DOTCOM_URL_PASSWORD}

Select the Sign In link
    Sign In link

Enter User name and Password and Select Sign In button
    User Sign In from Excel  ${RES_EXCEL_PATH}  ${SHEET_NAME}  ${TESTCASE_NO}  ${USERNAME_SIGNIN}  ${PASSWORD_SIGNIN}

Verify Video Add Shop option is displayed under Account Summary
    Verify Add Video page elements

Select close on auto payment popup
    Close Auto Pay popup
    Close Upgrade popup

Click Shop button for Video Upgrade
    Click Shop Button

Click Select button for adding Fios TV Preferred HD product
    Add Fios TV Preferred HD Product

Click Add for selecting Premium Channel Packages
    Click add on Showtime Starz & EPIX

Validate Premium Channel is added to Order Summary Page
    Verify Channel data is present on Order Summary  Showtime, Starz, & EPIX

Validate Price on Order Summary Page
    Verify Showtime Starz & EPIX price on Order Summary

Click Remove for de-selecting the same package
    Click Remove on Showtime Starz & EPIX

Validte Premium Channel package is removed from Order Summary Page
    Verify Removed Channel is not present on Order Summary  Showtime, Starz, & EPIX

Clear saved products from cart
    Click Return to My Account
    Click Shop Button
    Click Clear Cart on popup
    wait until element is enabled  ${FIOS_TV_PREFERRED_HD}  3m
    sleep  2s








