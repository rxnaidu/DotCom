*** Settings ***
Library  Selenium2Library
Library  FTRutil
#Library  robot/libraries/String.py
Library  String
Resource  ../Selectors/HomePageFooterSelector.robot
*** Variables ***
*** Keywords ***
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
#                                       Footer page Common Options
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#

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

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
#                                       Footer Shop
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
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

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
#                                       Footer My Account
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
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

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
#                                       Footer Support
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
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

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
#                                       Footer Corporate
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
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

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
#                                       Footer Frontier Sites
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
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
    Scroll Page To Locator View  ${FOOTER_FRONTIER_BUSINESSEDGE}
    click element  ${FOOTER_FRONTIER_BUSINESSEDGE}

Select Frontier Games option from Footer
    wait until element is enabled  ${FOOTER_FRONTIER_GAMES}
    Scroll Page To Locator View  ${FOOTER_FRONTIER_GAMES}
    click element  ${FOOTER_FRONTIER_GAMES}

Select Frontier WI-FI option from Footer
    wait until element is enabled  ${FOOTER_FRONTIER_WIFI}
    Scroll Page To Locator View  ${FOOTER_FRONTIER_WIFI}
    click element  ${FOOTER_FRONTIER_WIFI}

Select Wholesale option from Footer
    wait until element is enabled  ${FOOTER_WHOLESALE}
    Scroll Page To Locator View  ${FOOTER_WHOLESALE}
    click element  ${FOOTER_WHOLESALE}

Select Frontier Yahoo Portal option from Footer
    wait until element is enabled  ${FOOTER_FRONTIER_YAHOO_PORTAL}
    Scroll Page To Locator View  ${FOOTER_FRONTIER_YAHOO_PORTAL}
    click element  ${FOOTER_FRONTIER_YAHOO_PORTAL}

Select Referral Program option from Footer
    wait until element is enabled  ${FOOTER_REFERRAL_PROGRAM}
    Scroll Page To Locator View  ${FOOTER_REFERRAL_PROGRAM}
    click element  ${FOOTER_REFERRAL_PROGRAM}

Select Frontier Business Partner option from Footer
    wait until element is enabled  ${FOOTER_FRONTIER_BUSINESS_PARTNER}
    Scroll Page To Locator View  ${FOOTER_FRONTIER_BUSINESS_PARTNER}
    click element  ${FOOTER_FRONTIER_BUSINESS_PARTNER}

Select Online Phone Directories option from Footer
    wait until element is enabled  ${FOOTER_ONLINE_PHONE_DIRECTORIES}
    Scroll Page To Locator View  ${FOOTER_ONLINE_PHONE_DIRECTORIES}
    click element  ${FOOTER_ONLINE_PHONE_DIRECTORIES}

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
#                                       Footer Sales Partners
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
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


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
#                                       Footer Bottom line Links
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
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

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
#                                       Footer Bottom line Social Media Links
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#

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

