# download latest roswell
curl -sOL `curl -s https://api.github.com/repos/roswell/roswell/releases/latest | jq -r '.assets | .[] | select(.name|test("\\\.deb$")) | .browser_download_url'`

