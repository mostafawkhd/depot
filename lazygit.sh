#!/bin/bash



add_commit_push () {

	git add -A
	git commit -m "$1"
	git push origin "$2"
}



add_commit_push "$1" "$2"
