#!/bin/bash

api="https://owo.vc/api/v2"
agent="owo.sh (https://github.com/zeviel/owo.sh)"

function shorten_url() {
	curl -v --request POST \
		--url "$api/link" \
		--user-agent "$agent" \
		--header "accept: application/json"	\
		--header "content-type: application/json" \
		--data '{
			"link": "'$1'",
			"generator": "'$2'",
			"metadata": "'$3'"
		}'
}

function get_url_info() {
	curl --request GET \
		--url "$api/link/$1" \
		--user-agent "$agent" \
		--header "accept: application/json"	\
		--header "content-type: application/json"
}
