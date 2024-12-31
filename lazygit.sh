#!/bin/bash

if [ -z $1 ] || [ -z $2 ];then
	echo 'you should enter two arguments'
	exit 1
fi


if [ $1 = 'help' ]; then

	echo 'lazygit [YOUR_COMMIT] [BRANCH]'
fi

add_commit_push () {

	git add -A
	git commit -m "$1"
	git push origin "$2"
}




add_commit_push "$1" "$2"
