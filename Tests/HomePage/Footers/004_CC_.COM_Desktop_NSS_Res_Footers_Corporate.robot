*** Settings ***
Documentation  Ftr.com Automation
Library  Selenium2Library  30

Resource  ../../../Resources/KW/HomePage/Footers/004_CC_.COM_Desktop_NSS_Res_Footers_Corporate_KW.robot
Resource  ../../../Resources/PO/Common/common.robot

Test Setup  Common.Begin Web Test
Test Teardown  Common.End Web Test

*** Variables ***
${ABOUT_US_URL}  https://qat03.frontier.com/corporate/about-us/overview
${INVESTOR_RELATIONS_URL}  http://investor.frontier.com/
${NEWS_URL}  http://investor.frontier.com/releases.cfm
${CAREERS_URL}  https://qat03.frontier.com/corporate/careers/overview
${SUPPLIERS_URL}  https://qat03.frontier.com/corporate/suppliers
${PRESSROOM_URL}  https://frontier.com/corporate/pressroom
${PUBLIC_INSPECTION_FILES_URL}  https://qat03.frontier.com/corporate/pif/public-inspection-files

*** Test Cases ***
003_CC_.COM_Desktop_NSS_Res_Footers_Support

    User launch Ftr.com application using URL

    Navigate to bottom of the Footer home page and click: Corporate > About Us

    Verify URL changes to About Us Page  ${ABOUT_US_URL}

    Go back to Home Page

    Navigate to bottom of the Footer home page and click: Corporate > Investor Relations

    Verify URL changes to Investor Relations Page  ${INVESTOR_RELATIONS_URL}

    Go back to Home Page

    Navigate to bottom of the Footer home page and click: Corporate > News

    Verify URL changes to News Page  ${NEWS_URL}

    Go back to Home Page

    Navigate to bottom of the Footer home page and click: Corporate > Careers

    Verify URL changes to Careers Page  ${CAREERS_URL}

    Go back to Home Page

    Navigate to bottom of the Footer home page and click: Corporate > Suppliers

    Verify URL changes to Suppliers Page  ${SUPPLIERS_URL}

    Go back to Home Page

    Navigate to bottom of the Footer home page and click: Corporate > Pressroom

    Verify URL changes to Pressroom Page  ${PRESSROOM_URL}

    Go back to Home Page

    Navigate to bottom of the Footer home page and click: Corporate > Public Inspection Files

    Verify URL changes to Public Inspection Files Page  ${PUBLIC_INSPECTION_FILES_URL}


