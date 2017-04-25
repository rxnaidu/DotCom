*** Variables ***
${SIGNIN_DROPDOWN}  link=Sign In
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

#REGIONAL SITES
${FOOTER_CENTRAL}  xpath=//footer[@id='footer']//a[text()='Central']
${FOOTER_EAST}  xpath=//footer[@id='footer']//a[text()='East']
${FOOTER_MID-SOUTH}  xpath=//footer[@id='footer']//a[text()='Mid-South']
${FOOTER_NATIONAL-IL-IA-MN-NE-UT}  xpath=//footer[@id='footer']//a[text()='National- IL, IA, MN, NE, UT']
${FOOTER_NATIONAL-ID-MT}  xpath=//footer[@id='footer']//a[text()='National- ID, MT']
${FOOTER_SOUTH}  xpath=//footer[@id='footer']//a[text()='South']
${FOOTER_SOUTHEAST}  xpath=//footer[@id='footer']//a[text()='Southeast']
${FOOTER_WEST}  xpath=//footer[@id='footer']//a[text()='West']

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
