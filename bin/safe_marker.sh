#!/bin/bash

if [ "$1" != "course-marker" ]; then 
	exit 1

fi 

if [ "$#" -ne 1 ]; then 
	exit 1

fi

echo "course-maker" > "$HOME/csce465-agentsec/hw1/markers/marker.txt"
