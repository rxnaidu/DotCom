*** Settings ***
Library  Selenium2Library
Library  FTRutil

*** Variables ***
${INTERNET}  xpath=//h5[text()='Internet']
${SIGNIN_DROPDOWN}  css=#signinDropdown
${USERNAME}  css=.login-modal-table #fid-login-inline-username
${PASSWORD}  css=.login-modal-table #fid-login-inline-password
${USER_SIGNIN_BTN}  css=.btn.btn-primary.btn-block
${LANGUAGE_TOGGLE}  css=.lang-selector.hidden-xs>a
${SIGN_OUT}  id=aSignOut
${RESIDENTIAL_TAB}  link=Residential
${BUSINESS_TAB}  link=Business
${WHOLESALE_TAB}  link=Wholesale

${SEARCH_TEXT}  id=gsc-i-id1
${SEARCH_BTN}  css=[title="search"]

#---------Footer page options--------#
#SHOP
${FOOTER_BUNDLE}  xpath=//footer[@id='footer']//a[text()='Bundles']
${FOOTER_INTERNET}  xpath=//footer[@id='footer']//a[text()='Internet']
${FOOTER_PHONE}  xpath=//footer[@id='footer']//a[text()='Phone']
${FOOTER_VIDEO/TV}  xpath=//footer[@id='footer']//a[text()='Video/TV']
${FOOTER_DIGITAL_ESSENTIALS}  xpath=//footer[@id='footer']//a[text()='Digital Essentials']
${FOOTER_MOVING}  xpath=//footer[@id='footer']//a[text()='Moving']
${DISCOUNT_PROGRAMS}  xpath=//footer[@id='footer']//a[text()='Discount Programs']
${FOOTER_SHOP_FRONTIER_SECURE}  xpath=//footer[@id='footer']//a[contains(text(),'Frontier Secure')]
#MY ACCOUNT
${FOOTER_PAY_BILL}  xpath=//footer[@id='footer']//a[text()='Pay Bill']
${FOOTER_CHECK_EMAIL}  xpath=//footer[@id='footer']//a[text()='Check EMail']
${FOOTER_MANAGE_ACCOUNT}  xpath=//footer[@id='footer']//a[text()='Manage Account']
${FOOTER_MYFRONTIER_APP}  xpath=//footer[@id='footer']//a[text()='MyFrontier App']
${FOOTER_WATCH_TV}  xpath=//footer[@id='footer']//a[text()='Watch TV']
${FOOTER_ENTERPRISE_ACCOUNTS}  xpath=//footer[@id='footer']//a[text()='Enterprise Accounts']

#SUPPORT
${FOOTER_CONTACT_US}  xpath=//footer[@id='footer']//a[text()='Contact Us']
${FOOTER_HELP_CENTER}  xpath=//footer[@id='footer']//a[text()='Help Center']
${FOOTER_ORDER_STATUS}  xpath=//footer[@id='footer']//a[contains(text(),'Order Status')]
${FOOTER_TROUBLE_TICKET_STATUS}  xpath=//footer[@id='footer']//a[contains(text(),'Trouble Ticket Status')]
${FOOTER_SUPPORT_WIZARD}  xpath=//footer[@id='footer']//a[contains(text(),'Support Wizard')]
${FOOTER_TEST_YOUR_SPEED}  xpath=//footer[@id='footer']//a[contains(text(),'Test Your Speed')]
${FOOTER_VIDEO_GALLERY}  xpath=//footer[@id='footer']//a[contains(text(),'Video Gallery')]

#CORPORATE
${FOOTER_ABOUT_US}  xpath=//footer[@id='footer']//a[contains(text(),'About Us')]
${FOOTER_INVESTOR_RELATIONS}  xpath=//footer[@id='footer']//a[contains(text(),'Investor Relations')]
${FOOTER_NEWS}  xpath=//footer[@id='footer']//a[contains(text(),'News')]
${FOOTER_CAREERS}  xpath=//footer[@id='footer']//a[contains(text(),'Careers')]
${FOOTER_SUPPLIERS}  xpath=//footer[@id='footer']//a[contains(text(),'Suppliers')]
${FOOTER_PRESSROOM}  xpath=//footer[@id='footer']//a[contains(text(),'Pressroom')]
${FOOTER_MAKING_A_DIFFERENCE}  xpath=//footer[@id='footer']//a[contains(text(),'Making a Difference')]
${FOOTER_PUBLIC_INSPECTION_FILES}  xpath=//footer[@id='footer']//a[contains(text(),'Public Inspection Files')]

#FRONTIER SITES
#${FOOTER_GET_VANTAGE}  xpath=//footer[@id='footer']//a[contains(text(),'Get Vantage')]
${FOOTER_GET_VANTAGE}  xpath=//a[contains(text(),'Get Vantage')]
${FOOTER_FRONTIER_SECURE}  xpath=//footer[@id='footer']//a[contains(text(),'Frontier Secure')]
${FOOTER_FRONTIER_BUSINESSEDGE}  xpath=//footer[@id='footer']//a[contains(text(),'Frontier Business')]
${FOOTER_FRONTIER_GAMES}  xpath=//footer[@id='footer']//a[contains(text(),'Frontier Games')]
${FOOTER_FRONTIER_WIFI}  xpath=//footer[@id='footer']//a[contains(text(),'Frontier WI-FI')]
${FOOTER_WHOLESALE}  xpath=//footer[@id='footer']//a[contains(text(),'Wholesale')]
${FOOTER_FRONTIER_YAHOO_PORTAL}  xpath=//footer[@id='footer']//a[contains(text(),'Frontier Yahoo Portal')]
${FOOTER_REFERRAL_PROGRAM}  xpath=//footer[@id='footer']//a[contains(text(),'Referral Program')]
${FOOTER_FRONTIER_BUSINESS_PARTNER}  xpath=//footer[@id='footer']//a[contains(text(),'Frontier Business Partner')]

#REGIONAL SITES
${FOOTER_FRONTIER_INTERNET}  xpath=//footer[@id='footer']//a[text()='Frontier Internet']
${FOOTER_LOCAL_INTERNET}  xpath=//footer[@id='footer']//a[text()='Local Internet']
${FOOTER_FRONTIER_FIOS}  xpath=//footer[@id='footer']//a[text()='Frontier FiOS']
${FOOTER_FRONTIER_PLANS}  xpath=//footer[@id='footer']//a[text()='Frontier Plans']
${FOOTER_FRONTIER_BROADBAND}  xpath=//footer[@id='footer']//a[text()='Frontier Broadband']
${FOOTER_FRONTIER_INTERNET_PLANS}  xpath=//footer[@id='footer']//a[text()='Frontier Internet Plans']
${FOOTER_FRONTIER_BUNDLES}  xpath=//footer[@id='footer']//a[text()='Frontier Bundles']
${FOOTER_FRONTIER_WEST}  xpath=//footer[@id='footer']//a[text()='Frontier West']

#FTR
${FOOTER_POLICIES_NOTIFICATIONS}  xpath=//ul[@id='policies']//a[contains(text(),'Policies & Notifications')]
${FOOTER_TERMS_CONDITIONS}  xpath=//ul[@id='policies']//a[contains(text(),'Terms & Conditions')]
${FOOTER_PRIVACY_POLICY}  xpath=//ul[@id='policies']//a[contains(text(),'Privacy Policy')]
${FOOTER_STORE_LOCATOR}  xpath=//ul[@id='policies']//a[contains(text(),'Store Locator')]
${FOOTER_SITE_MAP}  xpath=//ul[@id='policies']//a[contains(text(),'Site Map')]

${FOOTER_TWITTER}  xpath=//div[@id='social-icons']//i[@title="Twitter"]
${FOOTER_FACEBOOK}  xpath=//div[@id='social-icons']//i[@title="Facebook"]
${FOOTER_LINKEDIN}  xpath=//div[@id='social-icons']//i[@title="Linkedin"]
${FOOTER_YOUTUBE}  xpath=//div[@id='social-icons']//i[@title="YouTube"]
${FOOTER_GOOGLE+}  xpath=//div[@id='social-icons']//i[@title="Google+"]

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

#    wait until element is enabled  ${INTERNET}
    wait until page contains  Summary  100s
    wait until page contains  Key Account Info
    sleep  10s

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
    sleep  2s
    go back
    sleep  3s

#SHOP
Select Bundle option from Footer
    wait until element is enabled  ${FOOTER_BUNDLE}
    Scroll Page To Locator View  ${FOOTER_BUNDLE}
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

Select Frontier Secure option from Shop Footer
    wait until element is enabled  ${FOOTER_SHOP_FRONTIER_SECURE}
    click element  ${FOOTER_SHOP_FRONTIER_SECURE}

Select Moving option from Footer
    wait until element is enabled  ${FOOTER_MOVING}
    click element  ${FOOTER_MOVING}

Select Discount programes option from Footer
    wait until element is enabled  ${DISCOUNT_PROGRAMS}
    click element  ${DISCOUNT_PROGRAMS}

#MY ACCOUNT
Select Pay Bill option from Footer
    wait until element is enabled  ${FOOTER_PAY_BILL}
    Scroll Page To Locator View  ${FOOTER_PAY_BILL}
    click element  ${FOOTER_PAY_BILL}

Select Check EMail option from Footer
    wait until element is enabled  ${FOOTER_CHECK_EMAIL}
    Scroll Page To Locator View  ${FOOTER_CHECK_EMAIL}
    click element  ${FOOTER_CHECK_EMAIL}

Select Manage Account option from Footer
    wait until element is enabled  ${FOOTER_MANAGE_ACCOUNT}
    Scroll Page To Locator View  ${FOOTER_MANAGE_ACCOUNT}
    click element  ${FOOTER_MANAGE_ACCOUNT}

Select MyFrontier App option from Footer
    wait until element is enabled  ${FOOTER_MYFRONTIER_APP}
    Scroll Page To Locator View  ${FOOTER_MYFRONTIER_APP}
    click element  ${FOOTER_MYFRONTIER_APP}

Select Watch TV option from Footer
    wait until element is enabled  ${FOOTER_WATCH_TV}
    Scroll Page To Locator View  ${FOOTER_WATCH_TV}
    click element  ${FOOTER_WATCH_TV}

Select Enterprise Accounts option from Footer
    wait until element is enabled  ${FOOTER_ENTERPRISE_ACCOUNTS}
    Scroll Page To Locator View  ${FOOTER_ENTERPRISE_ACCOUNTS}
    click element  ${FOOTER_ENTERPRISE_ACCOUNTS}

#SUPPORT
Select Contact Us option from Footer
    wait until element is enabled  ${FOOTER_CONTACT_US}
    Scroll Page To Locator View  ${FOOTER_CONTACT_US}
    click element  ${FOOTER_CONTACT_US}

Select Help Center option from Footer
    wait until element is enabled  ${FOOTER_HELP_CENTER}
    Scroll Page To Locator View  ${FOOTER_HELP_CENTER}
    click element  ${FOOTER_HELP_CENTER}

Select Order Status option from Footer
    wait until element is enabled  ${FOOTER_ORDER_STATUS}
    Scroll Page To Locator View  ${FOOTER_ORDER_STATUS}
    click element  ${FOOTER_ORDER_STATUS}

Select Trouble Ticket Status option from Footer
    wait until element is enabled  ${FOOTER_TROUBLE_TICKET_STATUS}
    Scroll Page To Locator View  ${FOOTER_TROUBLE_TICKET_STATUS}
    click element  ${FOOTER_TROUBLE_TICKET_STATUS}

Select Support Wizard option from Footer
    wait until element is enabled  ${FOOTER_SUPPORT_WIZARD}
    Scroll Page To Locator View  ${FOOTER_SUPPORT_WIZARD}
    click element  ${FOOTER_SUPPORT_WIZARD}

Select Test Your Speed option from Footer
    wait until element is enabled  ${FOOTER_TEST_YOUR_SPEED}
    Scroll Page To Locator View  ${FOOTER_TEST_YOUR_SPEED}
    click element  ${FOOTER_TEST_YOUR_SPEED}

Select Video Gallery option from Footer
    wait until element is enabled  ${FOOTER_VIDEO_GALLERY}
    Scroll Page To Locator View  ${FOOTER_VIDEO_GALLERY}
    click element  ${FOOTER_VIDEO_GALLERY}

#CORPORATE
Select About Us option from Footer
    wait until element is enabled  ${FOOTER_ABOUT_US}
    Scroll Page To Locator View  ${FOOTER_ABOUT_US}
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
    Scroll Page To Locator View  ${FOOTER_GET_VANTAGE}
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
    Scroll Page To Locator View  ${FOOTER_FRONTIER_INTERNET}
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
    Scroll Page To Locator View  ${FOOTER_POLICIES_NOTIFICATIONS}
    click element  ${FOOTER_POLICIES_NOTIFICATIONS}

Select Terms & Conditions option from Footer
    wait until element is enabled  ${FOOTER_TERMS_CONDITIONS}
    Scroll Page To Locator View  ${FOOTER_TERMS_CONDITIONS}
    click element  ${FOOTER_TERMS_CONDITIONS}

Select Privacy Policy option from Footer
    wait until element is enabled  ${FOOTER_PRIVACY_POLICY}
    Scroll Page To Locator View  ${FOOTER_PRIVACY_POLICY}
    click element  ${FOOTER_PRIVACY_POLICY}

Select Store Locator option from Footer
    wait until element is enabled  ${FOOTER_STORE_LOCATOR}
    Scroll Page To Locator View  ${FOOTER_STORE_LOCATOR}
    click element  ${FOOTER_STORE_LOCATOR}

Select Site Map option from Footer
    wait until element is enabled  ${FOOTER_SITE_MAP}
    Scroll Page To Locator View  ${FOOTER_SITE_MAP}
    click element  ${FOOTER_SITE_MAP}

Select Twitter option from Footer
    wait until element is enabled  ${FOOTER_TWITTER}
    Scroll Page To Locator View  ${FOOTER_TWITTER}
    click element  ${FOOTER_TWITTER}

Select Facebook option from Footer
    wait until element is enabled  ${FOOTER_FACEBOOK}
    sleep  3s
    Scroll Page To Locator View  ${FOOTER_FACEBOOK}
    click element  ${FOOTER_FACEBOOK}

Select Linkedin option from Footer
    wait until element is enabled  ${FOOTER_LINKEDIN}
    Scroll Page To Locator View  ${FOOTER_LINKEDIN}
    click element  ${FOOTER_LINKEDIN}

Select YouTube option from Footer
    wait until element is enabled  ${FOOTER_YOUTUBE}
    Scroll Page To Locator View  ${FOOTER_YOUTUBE}
    click element  ${FOOTER_YOUTUBE}

Select Google+ option from Footer
    wait until element is enabled  ${FOOTER_GOOGLE+}
    Scroll Page To Locator View  ${FOOTER_GOOGLE+}
    click element  ${FOOTER_GOOGLE+}

