#!/bin/bash


current_branch= $( git branch --show-current )
# For some tests
if [ "$1" = 'help' ]; then
	echo 'lazygit [YOUR_COMMIT] [BRANCH]'
 	exit 0
fi

if [ "$1" = 'install' ]; then 
	if [ $UID != '0' ]; then
 		echo 'please run install as root '
   		exit 1
        fi
	chmod +x ./lazygit.sh 
	ln -sf "${PWD}/lazygit.sh" "/usr/local/bin/lazygit.sh"
 	echo 'is installed use help to get help'
  	exit 0
fi

if [ -z "$1" ] ;then
	echo 'you should enter your commit'
	exit 1
fi

add_commit_push () {

	git add -A
	git commit -m "$1"
	git push origin "$2"
	echo "your work is commited and pushed to the $2 branch"
}




add_commit_push "$1" "$current_branch"


