*** Settings ***
Library  Selenium2Library  60

*** Variables ***
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
#                                       Footer Shop
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
#SHOP
${FOOTER_BUNDLE}  xpath=//footer[@id='footer']//a[text()='Bundles']
${FOOTER_INTERNET}  xpath=//footer[@id='footer']//a[text()='Internet']
${FOOTER_PHONE}  xpath=//footer[@id='footer']//a[text()='Phone']
${FOOTER_VIDEO/TV}  xpath=//footer[@id='footer']//a[text()='Video/TV']
${FOOTER_DIGITAL_ESSENTIALS}  xpath=//footer[@id='footer']//a[text()='Digital Essentials']
${FOOTER_MOVING}  xpath=//footer[@id='footer']//a[text()='Moving']
${DISCOUNT_PROGRAMS}  xpath=//footer[@id='footer']//a[text()='Discount Programs']
${FOOTER_SHOP_FRONTIER_SECURE}  xpath=//footer[@id='footer']//a[contains(text(),'Frontier Secure')]
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
#                                       Footer My Account
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
#MY ACCOUNT
${FOOTER_PAY_BILL}  xpath=//footer[@id='footer']//a[text()='Pay Bill']
${FOOTER_CHECK_EMAIL}  xpath=//footer[@id='footer']//a[text()='Check EMail']
${FOOTER_MANAGE_ACCOUNT}  xpath=//footer[@id='footer']//a[text()='Manage Account']
${FOOTER_MYFRONTIER_APP}  xpath=//footer[@id='footer']//a[text()='MyFrontier App']
${FOOTER_WATCH_TV}  xpath=//footer[@id='footer']//a[text()='Watch TV']
${FOOTER_ENTERPRISE_ACCOUNTS}  xpath=//footer[@id='footer']//a[text()='Enterprise Accounts']
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
#                                       Footer Support
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
#SUPPORT
${FOOTER_CONTACT_US}  xpath=//footer[@id='footer']//a[text()='Contact Us']
${FOOTER_HELP_CENTER}  xpath=//footer[@id='footer']//a[text()='Help Center']
${FOOTER_ORDER_STATUS}  xpath=//footer[@id='footer']//a[contains(text(),'Order Status')]
${FOOTER_TROUBLE_TICKET_STATUS}  xpath=//footer[@id='footer']//a[contains(text(),'Trouble Ticket Status')]
${FOOTER_SUPPORT_WIZARD}  xpath=//footer[@id='footer']//a[contains(text(),'Support Wizard')]
${FOOTER_TEST_YOUR_SPEED}  xpath=//footer[@id='footer']//a[contains(text(),'Test Your Speed')]
${FOOTER_VIDEO_GALLERY}  xpath=//footer[@id='footer']//a[contains(text(),'Video Gallery')]
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
#                                       Footer Corporate
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
#CORPORATE
${FOOTER_ABOUT_US}  xpath=//footer[@id='footer']//a[contains(text(),'About Us')]
${FOOTER_INVESTOR_RELATIONS}  xpath=//footer[@id='footer']//a[contains(text(),'Investor Relations')]
${FOOTER_NEWS}  xpath=//footer[@id='footer']//a[contains(text(),'News')]
${FOOTER_CAREERS}  xpath=//footer[@id='footer']//a[contains(text(),'Careers')]
${FOOTER_SUPPLIERS}  xpath=//footer[@id='footer']//a[contains(text(),'Suppliers')]
${FOOTER_PRESSROOM}  xpath=//footer[@id='footer']//a[contains(text(),'Pressroom')]
${FOOTER_MAKING_A_DIFFERENCE}  xpath=//footer[@id='footer']//a[contains(text(),'Making a Difference')]
${FOOTER_PUBLIC_INSPECTION_FILES}  xpath=//footer[@id='footer']//a[contains(text(),'Public Inspection Files')]
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
#                                       Footer Frontier Sites
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
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
${FOOTER_ONLINE_PHONE_DIRECTORIES}  xpath=//footer[@id='footer']//a[contains(text(),'Online Phone Directories')]
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
#                                       Footer Regional Sites
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
#REGIONAL SITES
${FOOTER_FRONTIER_INTERNET}  xpath=//footer[@id='footer']//a[text()='Frontier Internet']
${FOOTER_LOCAL_INTERNET}  xpath=//footer[@id='footer']//a[text()='Local Internet']
${FOOTER_FRONTIER_FIOS}  xpath=//footer[@id='footer']//a[text()='Frontier FiOS']
${FOOTER_FRONTIER_PLANS}  xpath=//footer[@id='footer']//a[text()='Frontier Plans']
${FOOTER_FRONTIER_BROADBAND}  xpath=//footer[@id='footer']//a[text()='Frontier Broadband']
${FOOTER_FRONTIER_INTERNET_PLANS}  xpath=//footer[@id='footer']//a[text()='Frontier Internet Plans']
${FOOTER_FRONTIER_BUNDLES}  xpath=//footer[@id='footer']//a[text()='Frontier Bundles']
${FOOTER_FRONTIER_WEST}  xpath=//footer[@id='footer']//a[text()='Frontier West']
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
#                                       Footer Bootom line Links
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
#FTR
${FOOTER_POLICIES_NOTIFICATIONS}  xpath=//ul[@id='policies']//a[contains(text(),'Policies & Notifications')]
${FOOTER_TERMS_CONDITIONS}  xpath=//ul[@id='policies']//a[contains(text(),'Terms & Conditions')]
${FOOTER_PRIVACY_POLICY}  xpath=//ul[@id='policies']//a[contains(text(),'Privacy Policy')]
${FOOTER_STORE_LOCATOR}  xpath=//ul[@id='policies']//a[contains(text(),'Store Locator')]
${FOOTER_SITE_MAP}  xpath=//ul[@id='policies']//a[contains(text(),'Site Map')]
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
#                                       Footer Bootom line Social Media Links
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
${FOOTER_TWITTER}  xpath=//div[@id='social-icons']//i[@title="Twitter"]
${FOOTER_FACEBOOK}  xpath=//div[@id='social-icons']//i[@title="Facebook"]
${FOOTER_LINKEDIN}  xpath=//div[@id='social-icons']//i[@title="Linkedin"]
${FOOTER_YOUTUBE}  xpath=//div[@id='social-icons']//i[@title="YouTube"]
${FOOTER_GOOGLE+}  xpath=//div[@id='social-icons']//i[@title="Google+"]