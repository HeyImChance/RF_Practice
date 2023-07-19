*** Settings ***
Library   SeleniumLibrary
# Library   RPA.Browser.Playwright

Documentation     POC for Robot Framework
...
...               Keywords are imported from the resource file
Resource          keywords.resource

*** Variables ***
${stage-home}    https://access.stage.redhat.com/management
${stage-subs}    https://access.stage.redhat.com/management/subscriptions?type=all

*** Test Cases ***
#Playwright Example
#    New Page    https://access.stage.redhat.com/management
#    Login User       manifests-admin-1         shadowman
#    [Teardown]    Close Server Connection

Login Example
    [Tags]    foo
    Login to RHSM Web    manifests-admin-1    shadowman    ${stage-home}
    [Teardown]    Close Browser

Subscription Details Example
    [Tags]    subscriptions
    Login to RHSM Web    manifests-admin-1    shadowman    ${stage-subs}
    Check Sub Details