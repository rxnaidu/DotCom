*** Settings ***
Library  Selenium2Library  30
Resource  ../../../../../PO/Common.robot
Resource  ../../../../../PO/LoginPage.robot
Resource  ../../../../../PO/HomePage.robot
Resource  ../../../../../PO/HomePageHeader.robot
Resource  ../../../../../Properties/Shop_PR.robot

*** Variables ***
${TESTCASE_NO}  TC45

*** Keywords ***
User launch Ftr.com application using URL
    Begin Web Test from Excel  ${EXCEL_LOC}  ${SHEET_NAME}  ${TESTCASE_NO}  ${BROWSER_NAME}

Select Interner from Shop Tab
    Mouse over on Shop Tab
    Select Internet option

Change location to zip code1
    Enter zipcode and click Check Availability  ${EXCEL_LOC}  ${SHEET_NAME}  ${TESTCASE_NO}  ${ZIP_CODE_NUM1}
    #14626
Validate Multi-Language Toggle on Internet page
    Verify Toggle display Spanish

Select Learn More button for Simply BB Max Product and Validdate Multi-Language Toggle

Select Learn More button for Simply BB Ultimate Product and Validdate Multi-Language Toggle

Select Learn More button for BB Ultra Product and Validdate Multi-Language Toggle
    Select Simply BB Ultra
    Verify Toggle display Spanish
    go back
    wait until page contains  Simply Broadband Ultra
Change location to zip code2
    Enter zipcode and click Check Availability  ${EXCEL_LOC}  ${SHEET_NAME}  ${TESTCASE_NO}  ${ZIP_CODE_NUM2}
    #46804
Select Learn More button for Simply FIOS 100/100 Product and Validdate Multi-Language Toggle
    Select Simply FIOS 100/100
    Verify Toggle display Spanish
    go back
    wait until page contains  Simply FiOS® 100/100

Select Learn More button for Simply FIOS 30/30 Product and Validdate Multi-Language Toggle

Select Learn More button for Simply FIOS 50/50 Product and Validdate Multi-Language Toggle
    Select Simply FIOS 50/50
    Verify Toggle display Spanish
    go back
    wait until page contains  Simply FiOS® 50/50

