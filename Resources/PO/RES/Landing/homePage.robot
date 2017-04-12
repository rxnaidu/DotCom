*** Settings ***
Library  Selenium2Library  60

*** Variables ***
${SIGNIN_DROPDOWN}  link=Sign In
${USERNAME}  css=.login-modal-table #fid-login-inline-username
${PASSWORD}  css=.login-modal-table #fid-login-inline-password
${USER_SIGNIN_BTN}  css=.btn.btn-primary.btn-block
${LANGUAGE_TOGGLE}  css=.lang-selector.hidden-xs>a
${SIGN_OUT}  link=Sign Out
${RESIDENTIAL_TAB}  link=Residential
${BUSINESS_TAB}  link=Business
${WHOLESALE_TAB}  link=Wholesale

${SEARCH_TEXT}  id=gsc-i-id1
${SEARCH_BTN}  css=[title="search"]

#---------Footer page options--------#
#SHOP
${FOOTER_BUNDLE}  xpath=//footer[@id='footer']//a[contains(text(),'Bundles')]
${FOOTER_INTERNET}  xpath=//footer[@id='footer']//a[contains(text(),'Internet')]
${FOOTER_PHONE}  xpath=//footer[@id='footer']//a[contains(text(),'Phone')]
${FOOTER_VIDEO/TV}  xpath=//footer[@id='footer']//a[contains(text(),'Video/TV')]
${FOOTER_DIGITAL_ESSENTIALS}  xpath=//footer[@id='footer']//a[contains(text(),'Digital Essentials')]
${FOOTER_MOVING}  xpath=//footer[@id='footer']//a[contains(text(),'Moving')]
${DISCOUNT_PROGRAMS}  xpath=//footer[@id='footer']//a[contains(text(),'Discount Programs')]

#MY ACCOUNT
${FOOTER_PAY_BILL}  xpath=//footer[@id='footer']//a[contains(text(),'Pay Bill')]
${FOOTER_CHECK_EMAIL}  xpath=//footer[@id='footer']//a[contains(text(),'Check EMail')]
${FOOTER_MANAGE_ACCOUNT}  xpath=//footer[@id='footer']//a[contains(text(),'Manage Account')]
${FOOTER_MYFRONTIER_APP}  xpath=//footer[@id='footer']//a[contains(text(),'MyFrontier App')]
${FOOTER_WATCH_TV}  xpath=//footer[@id='footer']//a[contains(text(),'Watch TV')]
${FOOTER_ENTERPRISE_ACCOUNTS}  xpath=//footer[@id='footer']//a[contains(text(),'Enterprise Accounts')]

#SUPPORT
${FOOTER_CONTACT_US}  xpath=//footer[@id='footer']//a[contains(text(),'Contact Us')]
${FOOTER_HELP_CENTER}  xpath=//footer[@id='footer']//a[contains(text(),'Help Center')]
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
${FOOTER_PUBLIC_INSPECTION_FILES}  xpath=//footer[@id='footer']//a[contains(text(),'Public Inspection Files')]

#FRONTIER SITES
${FOOTER_GET_VANTAGE}  xpath=//footer[@id='footer']//a[contains(text(),'Get Vantage')]
${FOOTER_FRONTIER_SECURE}  xpath=//footer[@id='footer']//a[contains(text(),'Frontier Secure')]
${FOOTER_FRONTIER_BUSINESSEDGE}  xpath=//footer[@id='footer']//a[contains(text(),'Frontier BusinessEdge')]
${FOOTER_FRONTIER_GAMES}  xpath=//footer[@id='footer']//a[contains(text(),'Frontier Games')]
${FOOTER_FRONTIER_WIFI}  xpath=//footer[@id='footer']//a[contains(text(),'Frontier WI-FI')]
${FOOTER_WHOLESALE}  xpath=//footer[@id='footer']//a[contains(text(),'Wholesale')]
${FOOTER_FRONTIER_YAHOO_PORTAL}  xpath=//footer[@id='footer']//a[contains(text(),'Frontier Yahoo Portal')]
${FOOTER_REFERRAL_PROGRAM}  xpath=//footer[@id='footer']//a[contains(text(),'Referral Program')]
${FOOTER_BUSINESSEDGE_PARTNER_PROGRAM}  xpath=//footer[@id='footer']//a[contains(text(),'BusinessEdge Partner Program')]

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

Sign Out
    wait until element is enabled  ${SIGN_OUT}
    click link  ${SIGN_OUT}

User Sign In
    [Arguments]  ${Username_Inp}  ${Password_Inp}

    wait until element is enabled  ${USERNAME}
    input text  ${USERNAME}  ${Username_Inp}

    wait until element is enabled  ${PASSWORD}
    input password  ${PASSWORD}  ${Password_Inp}

    wait until element is enabled  ${USER_SIGNIN_BTN}
    click button  ${USER_SIGNIN_BTN}

    wait until page contains  welcome to Frontier!
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

    location should be  ${EXPECTED_URL}

Go back to Home Page
    go back
    sleep  2s

#SHOP
Select Bundle option from Footer
    wait until element is enabled  ${FOOTER_BUNDLE}
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
    click element  ${FOOTER_PAY_BILL}

Select Check EMail option from Footer
    wait until element is enabled  ${FOOTER_CHECK_EMAIL}
    click element  ${FOOTER_CHECK_EMAIL}

Select Manage Account option from Footer
    wait until element is enabled  ${FOOTER_MANAGE_ACCOUNT}
    click element  ${FOOTER_MANAGE_ACCOUNT}

Select MyFrontier App option from Footer
    wait until element is enabled  ${FOOTER_MYFRONTIER_APP}
    click element  ${FOOTER_MYFRONTIER_APP}

Select Watch TV option from Footer
    wait until element is enabled  ${FOOTER_WATCH_TV}
    click element  ${FOOTER_WATCH_TV}

Select Enterprise Accounts option from Footer
    wait until element is enabled  ${FOOTER_ENTERPRISE_ACCOUNTS}
    click element  ${FOOTER_ENTERPRISE_ACCOUNTS}

#SUPPORT
Select Contact Us option from Footer
    wait until element is enabled  ${FOOTER_CONTACT_US}
    click element  ${FOOTER_CONTACT_US}

Select Help Center option from Footer
    wait until element is enabled  ${FOOTER_HELP_CENTER}
    click element  ${FOOTER_HELP_CENTER}

Select Order Status option from Footer
    wait until element is enabled  ${FOOTER_ORDER_STATUS}
    click element  ${FOOTER_ORDER_STATUS}

Select Trouble Ticket Status option from Footer
    wait until element is enabled  ${FOOTER_TROUBLE_TICKET_STATUS}
    click element  ${FOOTER_TROUBLE_TICKET_STATUS}

Select Support Wizard option from Footer
    wait until element is enabled  ${FOOTER_SUPPORT_WIZARD}
    click element  ${FOOTER_SUPPORT_WIZARD}

Select Test Your Speed option from Footer
    wait until element is enabled  ${FOOTER_TEST_YOUR_SPEED}
    click element  ${FOOTER_TEST_YOUR_SPEED}

Select Video Gallery option from Footer
    wait until element is enabled  ${FOOTER_VIDEO_GALLERY}
    click element  ${FOOTER_VIDEO_GALLERY}

#CORPORATE
Select About Us option from Footer
    wait until element is enabled  ${FOOTER_ABOUT_US}
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

Select Public Inspection Files option from Footer
    wait until element is enabled  ${FOOTER_PUBLIC_INSPECTION_FILES}
    click element  ${FOOTER_PUBLIC_INSPECTION_FILES}

#FRONTIER SITES
Select Get Vantage option from Footer
    wait until element is enabled  ${FOOTER_GET_VANTAGE}
    click element  ${FOOTER_GET_VANTAGE}

Select Frontier Secure option from Footer
    wait until element is enabled  ${FOOTER_FRONTIER_SECURE}
    click element  ${FOOTER_FRONTIER_SECURE}

Select Frontier BusinessEdge option from Footer
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

Select BusinessEdge Partner Program option from Footer
    wait until element is enabled  ${FOOTER_BUSINESSEDGE_PARTNER_PROGRAM}
    click element  ${FOOTER_BUSINESSEDGE_PARTNER_PROGRAM}

#FTR
Select Policies & Notifications option from Footer
    wait until element is enabled  ${FOOTER_POLICIES_NOTIFICATIONS}
    click element  ${FOOTER_POLICIES_NOTIFICATIONS}

Select Terms & Conditions option from Footer
    wait until element is enabled  ${FOOTER_TERMS_CONDITIONS}
    click element  ${FOOTER_TERMS_CONDITIONS}

Select Privacy Policy option from Footer
    wait until element is enabled  ${FOOTER_PRIVACY_POLICY}
    click element  ${FOOTER_PRIVACY_POLICY}

Select Store Locator option from Footer
    wait until element is enabled  ${FOOTER_STORE_LOCATOR}
    click element  ${FOOTER_STORE_LOCATOR}

Select Site Map option from Footer
    wait until element is enabled  ${FOOTER_SITE_MAP}
    click element  ${FOOTER_SITE_MAP}

Select Twitter option from Footer
    wait until element is enabled  ${FOOTER_TWITTER}
    click element  ${FOOTER_TWITTER}

Select Facebook option from Footer
    wait until element is enabled  ${FOOTER_FACEBOOK}
    click element  ${FOOTER_FACEBOOK}

Select Linkedin option from Footer
    wait until element is enabled  ${FOOTER_LINKEDIN}
    click element  ${FOOTER_LINKEDIN}

Select YouTube option from Footer
    wait until element is enabled  ${FOOTER_YOUTUBE}
    click element  ${FOOTER_YOUTUBE}

Select Google+ option from Footer
    wait until element is enabled  ${FOOTER_GOOGLE+}
    click element  ${FOOTER_GOOGLE+}



