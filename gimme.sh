#!/bin/sh

curl -s -o /dev/null -Dheaders -d "{\"username\":\"$FOLIO_USERNAME\", \"password\":\"$FOLIO_PASSWORD\"}" -H "Content-Type: application/json" -H "X-Okapi-Tenant: $FOLIO_TENANT" -X POST $FOLIO_HOST/authn/login-with-expiry
awk '/set-cookie:/ {gsub(/;/, "\n", $2); print $2}' headers | grep 'folioAccessToken=' | sed 's/^.*folioAccessToken=//'
rm headers
