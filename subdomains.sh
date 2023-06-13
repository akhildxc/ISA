#!/bin/bash

# Set your domain and subdomain details
DOMAIN_NAME="internationalstemacademy.com"
SUBDOMAIN_1="staging"
SUBDOMAIN_1_IP="15.206.153.188"


# Create subdomain 1
aws route53 change-resource-record-sets --hosted-zone-id Z018315737SKUBVPY02SK \
  --change-batch '{
    "Changes": [
      {
        "Action": "CREATE",
        "ResourceRecordSet": {
          "Name": "'"$SUBDOMAIN_1.$DOMAIN_NAME"'",
          "Type": "A",
          "TTL": 300,
          "ResourceRecords": [
            {
              "Value": "'"$SUBDOMAIN_1_IP"'"
            }
          ]
        }
      }
    ]
  }'



