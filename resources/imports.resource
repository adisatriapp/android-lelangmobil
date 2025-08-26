*** Settings ***
Library    AppiumLibrary
Variables    ../locators/loc-landing.py
Variables    ../locators/loc-menu.py
Variables    ../locators/loc-login.py
Variables    ../locators/loc-register.py
Variables    ../locators/loc-beranda.py
Variables    ../locators/loc-gadaiFidusia.py
Variables    ../locators/loc-gadai.py

Variables    ../test_data/dataCreds.py
Variables    ../test_data/dataAuth.py
Variables    ../test_data/dataUser.py
Variables    ../test_data/dataFidusia.py

Resource    ../resources/login.resource
Resource    ../resources/register.resource
Resource    ../resources/profile.resource
Resource    ../resources/gadai_bpkb_fidusia.resource
