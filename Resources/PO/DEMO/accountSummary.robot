*** Settings ***
Library  Selenium2Library  60

*** Variables ***
${ACCOUNT_SUMMARY_DROPDOWN}  css=#lnkSummary
${ACCOUNT_SUMMARY_OPTION}   link=Account Summary
${PHONE_IMG}  css=[ng-class="'fa-custom-phone'"]
${INTERNET_IMG}  css=[ng-class="'fa-custom-internet'"]

*** Keywords ***

Select Account Summary link
    wait until element is enabled  ${ACCOUNT_SUMMARY_DROPDOWN}
    wait until element is visible  ${ACCOUNT_SUMMARY_DROPDOWN}
    sleep  3s

    mouse over  ${ACCOUNT_SUMMARY_DROPDOWN}

    wait until element is enabled  ${ACCOUNT_SUMMARY_OPTION}
    wait until element is visible  ${ACCOUNT_SUMMARY_OPTION}
    sleep  2s

    click link  ${ACCOUNT_SUMMARY_OPTION}

    wait until page contains  Key Account Info
    wait until page contains  My Account
    wait until element is enabled  ${PHONE_IMG}

validate Internet and Phone products icons
    wait until element is enabled  ${PHONE_IMG}
    wait until element is enabled  ${INTERNET_IMG}

    page should contain element  ${PHONE_IMG}
    page should contain element  ${INTERNET_IMG}