##
# SoapUI simulator script
# $ ./CurlRestfulJson.sh
##
# Endpoint URL
endpoint="https://demo.soapui.com"

#Resource request
resource="/SoapUIsimulator/rest/services/api/v1/categories/271"

#Authentication token
token="Authorization:eyJhbGciOiJIUzI1NiJ9.eyJqdGkiOiI5YzMzZWI5Yi1iNGM2LTRiYzQtYjBjYy0wODUxNjVkNjAzMzAiLCJpYXQiOjE0NjUzMDY3NTUsInN1YiI6IjYiLCJpc3MiOiJPTVMtUkVTVCIsImFkbWluUm9sZSI6dHJ1ZSwiaW50cmFuZXQiOnRydWUsImNsaWVudE5hbWUiOiJEU0FQMTc3NDMxIn0.GOpj0Hhr0F7sP4kbEahc8dEH5MthFfkS6W_zvSA99-c"

#Send Get to request Categories
curl -X GET $endpoint$resource -H $token > categories.json


# Get token and construct the cookie, save the returned token.
#token=$(curl -b $cookie_path -c $cookie_path --request GET "$site_url/services/session/token" -s)

# Authentication. POST to $login_url with the token in header "X-CSRF-Token: $token".
#curl -H "X-CSRF-Token: $token" -b $cookie_path -c $cookie_path -d "username=$username&password=$password" "$login_url" -s

# search user in OKTA
result=$(
  curl -v -X GET \
-H "Accept: application/json" \
-H "Content-Type: application/json" \
-H "Authorization: SSWS 00PgHuO13g-c3MYZ4wtgcDkA-3wb8GN2xwV" \
"https://demo-admin.okta.com/api/v1/users/00u9qxctlptTpMI4K0x7/groups"

#Search user by email
#"https://demo-admin.okta.com/api/v1/users?q=kevin.tassy@bellaliant.ca"

#search group by user id
#"https://demo-admin.okta.com/api/v1/users/00u9qxctlptTpMI4K0x7/groups"
#echo $result | jq -r '.[].profile.name'


)

echo $result | jq -r '.[].profile.name'
