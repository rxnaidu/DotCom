*** Settings ***
Documentation  Ftr.com Automation
Library  Selenium2Library  30

Resource  ../../../Resources/KW/HomePage/TabSelections/014_CC_.COM_ENGLISH_NSS_Res_TS_Support_TroubleTicketStatus_KW.robot
Resource  ../../../Resources/PO/Common/common.robot

Test Setup  Common.Begin Web Test
Test Teardown  Common.End Web Test

*** Variables ***
${TROUBLE_TICKET_STATUS_URL}  https://qat01.frontier.com/helpcenter/categories/ticket-status

*** Test Cases ***

014_CC_.COM_ENGLISH_NSS_Res_TS_Support_TroubleTicketStatus

    User launch Ftr.com application using URL

    Click on the Tab selections as follows: Support> Trouble Ticket Status

    Verify URL changes to  ${TROUBLE_TICKET_STATUS_URL}