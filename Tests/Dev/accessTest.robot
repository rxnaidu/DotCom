*** Settings ***
Library  Selenium2Library
Library  SigmaUtil

*** Variables ***
${REGION}  US
${ORDERNUM}  2222228

*** Test Cases ***
Python Test
    DeactivateOrder  RR  555555
