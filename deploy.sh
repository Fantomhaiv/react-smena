set -e # halt script on error

zip -r website.zip build

curl -H "Content-Type: application/zip" \
     -H "Authorization: Bearer $NETLIFY" \
     --data-binary "@website.zip" \
     https://api.netlify.com/api/v1/sites/purchasing-officer-rams-31573/deploys