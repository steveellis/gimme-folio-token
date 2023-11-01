# gimme-folio-token

A shell script for getting a FOLIO token.

Setup: Make sure the set the following environment variables set:
- FOLIO_USERNAME - Your username.
- FOLIO_PASSWORD - Your password.
- FOLIO_TENANT - The tenant for which you would like to get a token.
- FOLIO_HOST - The okapi url.

Export each of these into your environment like `export FOLIO_USERNAME=abc`.

Then run the script like  `./gimme.sh`. If everything is working you should see a FOLIO access token. Copy it and use it as you wish.
