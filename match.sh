#!/bin/bash

twilio api lookups v2 phone-numbers fetch \
    --phone-number $MY_PHONE_NUMBER \
    --fields identity_match \
    --first-name ${1:-Jane} \
    -o json | jq .[0].identityMatch