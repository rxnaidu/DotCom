*** Settings ***
Documentation  Ftr.com Automation
Library  Selenium2Library  30

Resource  ../../../Resources/KW/HomePage/Footers/003_CC_.COM_Desktop_NSS_Res_Footers_Support_KW.robot
Resource  ../../../Resources/PO/Common/common.robot

#Test Setup  Common.Begin Web Test
Test Teardown  Common.End Web Test

*** Test Cases ***
003_CC_.COM_Desktop_NSS_Res_Footers_Support

    User launch Ftr.com application using URL

    Navigate to bottom of the Footer home page and click: Support > Help Center

    Verify URL changes to Help Center Page

    Go back to Home Page

    Navigate to bottom of the Footer home page and click: Support> Video Gallery

    Verify URL changes to Video Gallery Page

    Go back to Home Page

    Navigate to bottom of the Footer home page and click: Support > Support Wizard

    Verify URL changes to Support Wizard Page

    Go back to Home Page

    Navigate to bottom of the Footer home page and click: Support > Trouble Ticket Status

    Verify URL changes to Trouble Ticket Status Page

    Go back to Home Page

    Navigate to bottom of the Footer home page and click: Support > Order Status

    Verify URL changes to Order Status Page

    Go back to Home Page

    Navigate to bottom of the Footer home page and click: Support > Test Your Speed

    Verify URL changes to Test Your Speed Page

    Go back to Home Page

    Navigate to bottom of the Footer home page and click: Support> Contact Us

    Verify URL changes to Contact Us Page
