*** Settings ***
Library    AppiumLibrary
Variables    ../locators/loc-landing.py
Variables    ../locators/loc-menu.py
Variables    ../locators/loc-login.py
Variables    ../locators/loc-register.py

Variables    ../test-data/data-creds.py
Variables    ../test-data/data-auth.py

Resource    ../resources/login.resource
Resource    ../resources/register.resource
Resource    ../resources/profile.resource
