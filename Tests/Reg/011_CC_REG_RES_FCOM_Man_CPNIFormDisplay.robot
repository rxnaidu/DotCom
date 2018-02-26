*** Settings ***
Library  Selenium2Library  60

Resource  ../../Resources/KW/REG/011_CC_REG_RES_FCOM_Man_CPNIFormDisplay_KW.robot
Resource  ../../Resources/PO/Common.robot

Test Teardown  Common.End Web Test

*** Test Cases ***

011_CC_REG_RES_FCOM_Man_CPNIFormDisplay

    User launch Ftr.com application using URL

    Verify CPNI page details
