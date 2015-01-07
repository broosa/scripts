#!/bin/bash

#A quick script for easily cloning user-repositories from github
if [ $1 == "--ssh" ]; then
	mkdir -p $2/$3
	git clone git@github.com:$2/$3.git $2/$3
else
	mkdir -p $1/$2
	git clone http://github.com/$1/$2.git $1/$2
fi
