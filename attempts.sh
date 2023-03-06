#!/bin/bash

twilio api verify v2 attempts list \
    -o json \
    | jq '[ .[] | { channel: .channel, status: .conversionStatus, carrier: .channelData.carrier } ]'