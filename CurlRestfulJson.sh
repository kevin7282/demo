##
# SoapUI simulator script
# $ ./CurlRestfulJson.sh
##
# Endpoint URL
endpoint="https://intradev.gwy.services.ebc.gov.on.ca/esb/common/susmpgw/cac"

#Resource request
resource="/oms/rest/services/api/v1/categories/271"

#Authentication token
token="Authorization:eyJhbGciOiJIUzI1NiJ9.eyJqdGkiOiI5YzMzZWI5Yi1iNGM2LTRiYzQtYjBjYy0wODUxNjVkNjAzMzAiLCJpYXQiOjE0NjUzMDY3NTUsInN1YiI6IjYiLCJpc3MiOiJPTVMtUkVTVCIsImFkbWluUm9sZSI6dHJ1ZSwiaW50cmFuZXQiOnRydWUsImNsaWVudE5hbWUiOiJEU0FQMTc3NDMxIn0.GOpj0Hhr0F7sP4kbEahc8dEH5MthFfkS6W_zvSA99-c"

#Send Get to request Categories
curl -X GET $endpoint$resource -H $token > categories.json


# Get token and construct the cookie, save the returned token.
#token=$(curl -b $cookie_path -c $cookie_path --request GET "$site_url/services/session/token" -s)

# Authentication. POST to $login_url with the token in header "X-CSRF-Token: $token".
#curl -H "X-CSRF-Token: $token" -b $cookie_path -c $cookie_path -d "username=$username&password=$password" "$login_url" -s