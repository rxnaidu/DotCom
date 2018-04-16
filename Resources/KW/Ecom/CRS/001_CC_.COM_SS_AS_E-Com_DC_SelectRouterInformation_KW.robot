*** Settings ***
Library  Selenium2Library  60
Resource  ../../../PO/Common.robot
Resource  ../../../PO/LoginPage.robot
Resource  ../../../PO/HomePage.robot
Resource  ../../../PO/AccountSummary.robot
Resource  ../../../PO/EcomAddPackage.robot
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

Click Shop button for Video Add
    Click Shop Button

Click Select button for adding Fios TV Preferred HD product
    Add Fios TV Preferred HD Product

Select Sports Pass Channel package
    Click Add on Sports Pass

Click on Continue Button on Channel selection page
    Click Continue on Add Premium Channels page

Select FiOS Quantum TV Premium on DVR selection Page
    Click Select on FiOS Quantum TV Premium DVR option

Click on Continue Button on DVR selection Page
    Click Continue on DVR selection page

Select FiOS Quantum Gateway Router
    Click Select on FiOS Quantum Gateway Router option

Clear saved products from cart
    Click Return to My Account
    Click Shop Button
    Click Clear Cart on popup
    wait until element is enabled  ${FIOS_TV_PREFERRED_HD}  3m
    sleep  2s








