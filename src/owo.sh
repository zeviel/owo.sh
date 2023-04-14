#!/bin/bash

api="https://owo.vc/api/v2"

function shorten_url() {
	# 1 - link: (string): <link>
	# 2 - generator: (string): <generator - default: owo>
	# 3 - metadata: (string): <metadata - default: OWOIFY>
	curl --request POST \
		--url "$api/link" \
		--user-agent "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36" \
		--header "accept: application/json" \
		--header "content-type: application/json" \
		--data '{
			"link": "'$1'",
			"generator": "'${2:-owo}'",
			"metadata": "'${3:-OWOIFY}'"
		}'
}

function get_url_info() {
	curl --request GET \
		--url "$api/link/$1" \
		--user-agent "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36" \
		--header "accept: application/json" \
		--header "content-type: application/json"
}
