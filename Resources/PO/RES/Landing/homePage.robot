*** Settings ***
Library  Selenium2Library
Library  readExcel
Library  SigmaUtil
Resource  ../../../Selectors/homePage_SL.robot

*** Variables ***
${INTERNET}  xpath=//h5[text()='Internet']
*** Keywords ***

Sign In link
    wait until element is enabled  ${SIGNIN_DROPDOWN}
    click link  ${SIGNIN_DROPDOWN}
    sleep  1s

Sign Out
    wait until element is enabled  ${SIGN_OUT}
    sleep  2s
    click link  ${SIGN_OUT}

User Sign In from Excel
    [Arguments]  ${RES_EXCEL_PATH}  ${SHEET_NAME}  ${TESTCASE_NO}  ${USERNAME_SIGNIN}  ${PASSWORD_SIGNIN}

    ${Username_Inp_Ex}  read excel data by cell name  ${RES_EXCEL_PATH}  ${SHEET_NAME}   ${TESTCASE_NO}  ${USERNAME_SIGNIN}
    ${Password_Inp_Ex}  read excel data by cell name  ${RES_EXCEL_PATH}  ${SHEET_NAME}   ${TESTCASE_NO}  ${PASSWORD_SIGNIN}

    wait until element is enabled  ${USERNAME}
    input text  ${USERNAME}  ${Username_Inp_Ex}

    wait until element is enabled  ${PASSWORD}
    input password  ${PASSWORD}  ${Password_Inp_Ex}

    wait until element is enabled  ${USER_SIGNIN_BTN}
    click button  ${USER_SIGNIN_BTN}
    sleep  4s
    wait until element is enabled  ${INTERNET}

User Sign In
    [Arguments]  ${Username_Inp}  ${Password_Inp}
    wait until element is enabled  ${USERNAME}
    input text  ${USERNAME}  ${Username_Inp}

    wait until element is enabled  ${PASSWORD}
    input password  ${PASSWORD}  ${Password_Inp}

    wait until element is enabled  ${USER_SIGNIN_BTN}
    click button  ${USER_SIGNIN_BTN}
    sleep  3s

Select Residential Tab
    wait until element is enabled  ${RESIDENTIAL_TAB}
    click link  ${RESIDENTIAL_TAB}

Select Business Tab
    wait until element is enabled  ${BUSINESS_TAB}
    click link  ${BUSINESS_TAB}

Select Wholesale Tab
    wait until element is enabled  ${WHOLESALE_TAB}
    click link  ${WHOLESALE_TAB}

Select Multi-Language Toggle for Spanish Language
    wait until page contains  Shop
    wait until page contains  My Account
    wait until element is enabled  ${LANGUAGE_TOGGLE}

    page should contain  Español
    click element  ${LANGUAGE_TOGGLE}

Verify Toggle display English
    wait until page contains  Comprar
    wait until page contains  Mi cuenta
    wait until page contains  Soporte

    wait until element is enabled  ${LANGUAGE_TOGGLE}
    page should contain  English

Verify Residential Home Page
    sleep  2s
    wait until page contains  Shop
    wait until page contains  My Account
    page should contain  Pay Your Bill
    page should contain  Check Your Mail
    page should contain  Check Your Order Status

Search Text
    [Arguments]  ${Search_Inp}
    wait until element is enabled  ${SEARCH_TEXT}

    input text  ${SEARCH_TEXT}  ${Search_Inp}
    click element  ${SEARCH_BTN}

Verify Search Text Results
    [Arguments]  ${Search_Inp}
    wait until page contains  All
    wait until page contains  Help Center

    page should contain  ${Search_Inp}

#----------------Footer page Options--------------------------#

Verify currnt URL
    [Arguments]  ${EXPECTED_URL}
    log  ${EXPECTED_URL}
    Encode String To Bytes  ${EXPECTED_URL}  ASCII
    sleep  4s
    location should be  ${EXPECTED_URL}

Go back to Home Page
    go back
    sleep  3s

#SHOP
Select Bundle option from Footer
    wait until element is enabled  ${FOOTER_BUNDLE}
    scroll to locator view  ${webdriver}  ${FOOTER_BUNDLE}
    click element  ${FOOTER_BUNDLE}

Select Internet option from Footer
    wait until element is enabled  ${FOOTER_INTERNET}
    click element  ${FOOTER_INTERNET}

Select Phone option from Footer
    wait until element is enabled  ${FOOTER_PHONE}
    click element  ${FOOTER_PHONE}

Select Video/TV option from Footer
    wait until element is enabled  ${FOOTER_VIDEO/TV}
    click element  ${FOOTER_VIDEO/TV}

Select Degital Essentials option from Footer
    wait until element is enabled  ${FOOTER_DIGITAL_ESSENTIALS}
    click element  ${FOOTER_DIGITAL_ESSENTIALS}

Select Moving option from Footer
    wait until element is enabled  ${FOOTER_MOVING}
    click element  ${FOOTER_MOVING}

Select Discount programes option from Footer
    wait until element is enabled  ${DISCOUNT_PROGRAMS}
    click element  ${DISCOUNT_PROGRAMS}

#MY ACCOUNT
Select Pay Bill option from Footer
    wait until element is enabled  ${FOOTER_PAY_BILL}
    scroll to locator view  ${webdriver}  ${FOOTER_PAY_BILL}
    click element  ${FOOTER_PAY_BILL}

Select Check EMail option from Footer
    wait until element is enabled  ${FOOTER_CHECK_EMAIL}
    scroll to locator view  ${webdriver}  ${FOOTER_CHECK_EMAIL}
    click element  ${FOOTER_CHECK_EMAIL}

Select Manage Account option from Footer
    wait until element is enabled  ${FOOTER_MANAGE_ACCOUNT}
    scroll to locator view  ${webdriver}  ${FOOTER_MANAGE_ACCOUNT}
    click element  ${FOOTER_MANAGE_ACCOUNT}

Select MyFrontier App option from Footer
    wait until element is enabled  ${FOOTER_MYFRONTIER_APP}
    scroll to locator view  ${webdriver}  ${FOOTER_MYFRONTIER_APP}
    click element  ${FOOTER_MYFRONTIER_APP}

Select Watch TV option from Footer
    wait until element is enabled  ${FOOTER_WATCH_TV}
    scroll to locator view  ${webdriver}  ${FOOTER_WATCH_TV}
    click element  ${FOOTER_WATCH_TV}

Select Enterprise Accounts option from Footer
    wait until element is enabled  ${FOOTER_ENTERPRISE_ACCOUNTS}
    scroll to locator view  ${webdriver}  ${FOOTER_ENTERPRISE_ACCOUNTS}
    click element  ${FOOTER_ENTERPRISE_ACCOUNTS}

#SUPPORT
Select Contact Us option from Footer
    wait until element is enabled  ${FOOTER_CONTACT_US}
    scroll to locator view  ${webdriver}  ${FOOTER_CONTACT_US}
    click element  ${FOOTER_CONTACT_US}

Select Help Center option from Footer
    wait until element is enabled  ${FOOTER_HELP_CENTER}
    scroll to locator view  ${webdriver}  ${FOOTER_HELP_CENTER}
    click element  ${FOOTER_HELP_CENTER}

Select Order Status option from Footer
    wait until element is enabled  ${FOOTER_ORDER_STATUS}
    scroll to locator view  ${webdriver}  ${FOOTER_ORDER_STATUS}
    click element  ${FOOTER_ORDER_STATUS}

Select Trouble Ticket Status option from Footer
    wait until element is enabled  ${FOOTER_TROUBLE_TICKET_STATUS}
    scroll to locator view  ${webdriver}  ${FOOTER_TROUBLE_TICKET_STATUS}
    click element  ${FOOTER_TROUBLE_TICKET_STATUS}

Select Support Wizard option from Footer
    wait until element is enabled  ${FOOTER_SUPPORT_WIZARD}
    scroll to locator view  ${webdriver}  ${FOOTER_SUPPORT_WIZARD}
    click element  ${FOOTER_SUPPORT_WIZARD}

Select Test Your Speed option from Footer
    wait until element is enabled  ${FOOTER_TEST_YOUR_SPEED}
    scroll to locator view  ${webdriver}  ${FOOTER_TEST_YOUR_SPEED}
    click element  ${FOOTER_TEST_YOUR_SPEED}

Select Video Gallery option from Footer
    wait until element is enabled  ${FOOTER_VIDEO_GALLERY}
    scroll to locator view  ${webdriver}  ${FOOTER_VIDEO_GALLERY}
    click element  ${FOOTER_VIDEO_GALLERY}

#CORPORATE
Select About Us option from Footer
    wait until element is enabled  ${FOOTER_ABOUT_US}
    scroll to locator view  ${webdriver}  ${FOOTER_ABOUT_US}
    click element  ${FOOTER_ABOUT_US}

Select Investor Relations option from Footer
    wait until element is enabled  ${FOOTER_INVESTOR_RELATIONS}
    click element  ${FOOTER_INVESTOR_RELATIONS}

Select News option from Footer
    wait until element is enabled  ${FOOTER_NEWS}
    click element  ${FOOTER_NEWS}

Select Careers option from Footer
    wait until element is enabled  ${FOOTER_CAREERS}
    click element  ${FOOTER_CAREERS}

Select Suppliers option from Footer
    wait until element is enabled  ${FOOTER_SUPPLIERS}
    click element  ${FOOTER_SUPPLIERS}

Select Pressroom option from Footer
    wait until element is enabled  ${FOOTER_PRESSROOM}
    click element  ${FOOTER_PRESSROOM}

Select Making a Difference option from Footer
    wait until element is enabled  ${FOOTER_MAKING_A_DIFFERENCE}
    click element  ${FOOTER_MAKING_A_DIFFERENCE}

Select Public Inspection Files option from Footer
    wait until element is enabled  ${FOOTER_PUBLIC_INSPECTION_FILES}
    click element  ${FOOTER_PUBLIC_INSPECTION_FILES}

#FRONTIER SITES
Select Get Vantage option from Footer
    wait until element is enabled  ${FOOTER_GET_VANTAGE}
    #sleep  2s
    scroll to locator view  ${webdriver}  ${FOOTER_GET_VANTAGE}
    click element  ${FOOTER_GET_VANTAGE}

Select Frontier Secure option from Footer
    wait until element is enabled  ${FOOTER_FRONTIER_SECURE}
    click element  ${FOOTER_FRONTIER_SECURE}

Select Frontier Business option from Footer
    wait until element is enabled  ${FOOTER_FRONTIER_BUSINESSEDGE}
    click element  ${FOOTER_FRONTIER_BUSINESSEDGE}

Select Frontier Games option from Footer
    wait until element is enabled  ${FOOTER_FRONTIER_GAMES}
    click element  ${FOOTER_FRONTIER_GAMES}

Select Frontier WI-FI option from Footer
    wait until element is enabled  ${FOOTER_FRONTIER_WIFI}
    click element  ${FOOTER_FRONTIER_WIFI}

Select Wholesale option from Footer
    wait until element is enabled  ${FOOTER_WHOLESALE}
    click element  ${FOOTER_WHOLESALE}

Select Frontier Yahoo Portal option from Footer
    wait until element is enabled  ${FOOTER_FRONTIER_YAHOO_PORTAL}
    click element  ${FOOTER_FRONTIER_YAHOO_PORTAL}

Select Referral Program option from Footer
    wait until element is enabled  ${FOOTER_REFERRAL_PROGRAM}
    click element  ${FOOTER_REFERRAL_PROGRAM}

Select Frontier Business Partner option from Footer
    wait until element is enabled  ${FOOTER_FRONTIER_BUSINESS_PARTNER}
    click element  ${FOOTER_FRONTIER_BUSINESS_PARTNER}

#FRONTIER SITES
Select Frontier Internet option from Footer
    wait until element is enabled  ${FOOTER_FRONTIER_INTERNET}
    scroll to locator view  ${webdriver}  ${FOOTER_FRONTIER_INTERNET}
    click element  ${FOOTER_FRONTIER_INTERNET}

Select Local Internet option from Footer
    wait until element is enabled  ${FOOTER_LOCAL_INTERNET}
    click element  ${FOOTER_LOCAL_INTERNET}

Select Frontier FiOS option from Footer
    wait until element is enabled  ${FOOTER_FRONTIER_FIOS}
    click element  ${FOOTER_FRONTIER_FIOS}

Select Frontier Plans option from Footer
    wait until element is enabled  ${FOOTER_FRONTIER_PLANS}
    click element  ${FOOTER_FRONTIER_PLANS}

Select Frontier Broadband option from Footer
    wait until element is enabled  ${FOOTER_FRONTIER_BROADBAND}
    click element  ${FOOTER_FRONTIER_BROADBAND}

Select Frontier Internet Plans option from Footer
    wait until element is enabled  ${FOOTER_FRONTIER_INTERNET_PLANS}
    click element  ${FOOTER_FRONTIER_INTERNET_PLANS}

Select Frontier Bundles option from Footer
    wait until element is enabled  ${FOOTER_FRONTIER_BUNDLES}
    click element  ${FOOTER_FRONTIER_BUNDLES}

Select Frontier West option from Footer
    wait until element is enabled  ${FOOTER_FRONTIER_WEST}
    click element  ${FOOTER_FRONTIER_WEST}

#FTR
Select Policies & Notifications option from Footer
    wait until element is enabled  ${FOOTER_POLICIES_NOTIFICATIONS}
    scroll to locator view  ${webdriver}  ${FOOTER_POLICIES_NOTIFICATIONS}
    click element  ${FOOTER_POLICIES_NOTIFICATIONS}

Select Terms & Conditions option from Footer
    wait until element is enabled  ${FOOTER_TERMS_CONDITIONS}
    scroll to locator view  ${webdriver}  ${FOOTER_TERMS_CONDITIONS}
    click element  ${FOOTER_TERMS_CONDITIONS}

Select Privacy Policy option from Footer
    wait until element is enabled  ${FOOTER_PRIVACY_POLICY}
    scroll to locator view  ${webdriver}  ${FOOTER_PRIVACY_POLICY}
    click element  ${FOOTER_PRIVACY_POLICY}

Select Store Locator option from Footer
    wait until element is enabled  ${FOOTER_STORE_LOCATOR}
    scroll to locator view  ${webdriver}  ${FOOTER_STORE_LOCATOR}
    click element  ${FOOTER_STORE_LOCATOR}

Select Site Map option from Footer
    wait until element is enabled  ${FOOTER_SITE_MAP}
    scroll to locator view  ${webdriver}  ${FOOTER_SITE_MAP}
    click element  ${FOOTER_SITE_MAP}

Select Twitter option from Footer
    wait until element is enabled  ${FOOTER_TWITTER}
    scroll to locator view  ${webdriver}  ${FOOTER_TWITTER}
    click element  ${FOOTER_TWITTER}

Select Facebook option from Footer
    wait until element is enabled  ${FOOTER_FACEBOOK}
    sleep  3s
    scroll to locator view  ${webdriver}  ${FOOTER_FACEBOOK}
    click element  ${FOOTER_FACEBOOK}

Select Linkedin option from Footer
    wait until element is enabled  ${FOOTER_LINKEDIN}
    scroll to locator view  ${webdriver}  ${FOOTER_LINKEDIN}
    click element  ${FOOTER_LINKEDIN}

Select YouTube option from Footer
    wait until element is enabled  ${FOOTER_YOUTUBE}
    scroll to locator view  ${webdriver}  ${FOOTER_YOUTUBE}
    click element  ${FOOTER_YOUTUBE}

Select Google+ option from Footer
    wait until element is enabled  ${FOOTER_GOOGLE+}
    scroll to locator view  ${webdriver}  ${FOOTER_GOOGLE+}
    click element  ${FOOTER_GOOGLE+}



