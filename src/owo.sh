#!/bin/bash

api="https://owo.vc"

function shorten_url() {
	curl --request POST \
		--url "$api/generate" \
		--user-agent "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36" \
		--header "accept: application/json"	\
		--header "content-type: application/json" \
		--data '{
			"link": "'$1'",
			"generator": "'$2'",
			"preventScrape": "'$3'",
			"owoify": "'$4'",
		}'
}

function get_url_info() {
	curl --request GET \
		--url "$api/info/$1" \
		--user-agent "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36" \
		--header "accept: application/json"	\
		--header "content-type: application/json"
}
