*** Settings ***
Library  Selenium2Library  30
Resource  ../../../PO/Common.robot
Resource  ../../../PO/LoginPage.robot
Resource  ../../../PO/HomePage.robot
Resource  ../../../PO/HomePageHeader.robot
Resource  ../../../PO/Chat.robot
Resource  ../../../Properties/Chat_PR.robot

*** Variables ***
${TESTCASE_NO}  TC10

*** Keywords ***
User launch Ftr.com application using URL
    Begin Web Test from Excel  ${RES_EXCEL_PATH}  ${SHEET_NAME}  ${TESTCASE_NO}  ${BROWSER_NAME}  ${DOTCOM_URL}
    Load from Excel  ${RES_EXCEL_PATH}  ${SHEET_NAME}  ${TESTCASE_NO}  ${DOTCOM_URL_PASSWORD}

Select the new Multi-Language Toggle on the Residential Home page
    Select Multi-Language Toggle for Spanish Language

Home page should display in Spanish and toggle display 'English'
    Verify Toggle display English

Select the Contact Us option from the Support 2nd Tier Nav Tab
    mouse over on support tab-spanish
    select contact us option-spanish
#    wait until element is enabled  css=[class="fa-custom fa-custom-contact"]
#    wait until element is visible  css=[class="fa-custom fa-custom-contact"]
#    click element  css=[class="fa-custom fa-custom-contact"]

Select the More Contacts & Languages Tab
    wait until element is enabled  xpath=//div[@id='morecontacts-tab']/a
    click element  xpath=//div[@id='morecontacts-tab']/a
    sleep  2s
Select Residential from the Customer Type field
    wait until element is enabled  xpath=//div[@id='collapseOne-morecontacts']//input[@value="Residential"]/following-sibling::label[1]
    click element  xpath=//div[@id='collapseOne-morecontacts']//input[@value="Residential"]/following-sibling::label[1]
    sleep  2s
Select Internet from the Service Type field (or any other Service Type)
    wait until element is enabled  xpath=//div[@id='collapseTwo-morecontacts']//input[@value="Internet"]/following-sibling::label[1]
    click element  xpath=//div[@id='collapseTwo-morecontacts']//input[@value="Internet"]/following-sibling::label[1]
    sleep  2s
Select Frontier FIOS from the Product Type field (or any other Product Type)
    wait until element is enabled  xpath=//div[@id='collapseThree-morecontacts']//input[@value="Frontier-FiOS"]/following-sibling::label[1]
    click element  xpath=//div[@id='collapseThree-morecontacts']//input[@value="Frontier-FiOS"]/following-sibling::label[1]
    sleep  2s
Select Repair from the Help Type field
    wait until element is enabled  xpath=//div[@id='collapseFour-morecontacts']//input[@value="Repair"]/following-sibling::label[1]
    click element  xpath=//div[@id='collapseFour-morecontacts']//input[@value="Repair"]/following-sibling::label[1]
    sleep  2s
Select the floating Chat ICON
    Click Chat