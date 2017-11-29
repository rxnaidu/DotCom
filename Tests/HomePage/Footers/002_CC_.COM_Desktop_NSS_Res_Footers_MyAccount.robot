*** Settings ***
Documentation  Ftr.com Automation
Library  Selenium2Library  30

Resource  ../../../Resources/KW/HomePage/Footers/002_CC_.COM_Desktop_NSS_Res_Footers_MyAccount_KW.robot
Resource  ../../../Resources/PO/Common/common.robot

#Test Setup  Common.Begin Web Test
Test Teardown  Common.End Web Test

*** Test Cases ***
002_CC_.COM_Desktop_NSS_Res_Footers_MyAccount

    User launch Ftr.com application using URL

    Navigate to bottom of the Footer home page and click: My Account > Pay Bills

    Verify URL changes to Pay Bills Page

    Go back to Home Page

    Navigate to bottom of the Footer home page and click: My Account > Check Email

    Verify URL changes to Check Email Page

    Go back to Home Page

    Navigate to bottom of the Footer home page and click: My Account > Manage Account

    Verify URL changes to Manage Account Page

    Go back to Home Page

    Navigate to bottom of the Footer home page and click: My Account > MyFrontier App

    Verify URL changes to MyFrontier App Page

    Go back to Home Page

    Navigate to bottom of the Footer home page and click: My Account > Watch TV

    Verify URL changes to Watch TV Page

    Go back to Home Page

#    Navigate to bottom of the Footer home page and click: My Account > Enterprise Accounts
#
#    Verify URL changes to Moving Page



