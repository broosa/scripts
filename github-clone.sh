#!/bin/bash

#A quick script for easily cloning user-repositories from github
if [ ${1} -eq "--ssh" ]; then
	git clone git@github.com:${2}/${3}.git
else
	git clone http://github.com/${1}/${2}.git
fi
