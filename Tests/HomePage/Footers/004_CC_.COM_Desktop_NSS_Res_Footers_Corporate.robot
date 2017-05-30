*** Settings ***
Documentation  Ftr.com Automation
Library  Selenium2Library  30

Resource  ../../../Resources/KW/HomePage/Footers/004_CC_.COM_Desktop_NSS_Res_Footers_Corporate_KW.robot
Resource  ../../../Resources/PO/Common/common.robot

Test Teardown  Common.End Web Test

*** Test Cases ***
004_CC_.COM_Desktop_NSS_Res_Footers_Corporate

    User launch Ftr.com application using URL

    Navigate to bottom of the Footer home page and click: Corporate > About Us

    Verify URL changes to About Us Page

    Go back to Home Page

    Navigate to bottom of the Footer home page and click: Corporate > Investor Relations

    Verify URL changes to Investor Relations Page

    Go back to Home Page

    Navigate to bottom of the Footer home page and click: Corporate > News

    Verify URL changes to News Page

    Go back to Home Page

    Navigate to bottom of the Footer home page and click: Corporate > Careers

    Verify URL changes to Careers Page

    Go back to Home Page

    Navigate to bottom of the Footer home page and click: Corporate > Suppliers

    Verify URL changes to Suppliers Page

    Go back to Home Page

    Navigate to bottom of the Footer home page and click: Corporate > Pressroom

    Verify URL changes to Pressroom Page

    Go back to Home Page

    Navigate to bottom of the Footer home page and click: Corporate > Making a Difference

    Verify URL changes to Making a Difference

    Go back to Home Page

    Navigate to bottom of the Footer home page and click: Corporate > Public Inspection Files

    Verify URL changes to Public Inspection Files Page


