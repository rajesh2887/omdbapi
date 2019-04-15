#!/usr/bin/env bash
read -p " Enter your movie name" name
echo $name
curl -G "http://www.omdbapi.com/?t=$name&apikey=13f411c2" | cut -d "," -f 1- --output-delimiter=$'\n' | grep "Title"
#curl -X POST -d @movie "http://www.omdbapi.com/?t=$name&apikey=13f411c2" > fin.txt
#cut -d "," -f 1- fin.txt cut -d "," -f 1- fin.txt  --output-delimiter=$'\n' | grep "Title"
#cut -d "," -f 1- fin.txt cut -d "," -f 1- fin.txt  --output-delimiter=$'\n' | grep "Year"
curl -G "http://www.omdbapi.com/?t=$name&apikey=13f411c2" | cut -d "," -f 1- --output-delimiter=$'\n' | grep "Year"
curl -G "http://www.omdbapi.com/?t=$name&apikey=13f411c2" | cut -d "," -f 1- --output-delimiter=$'\n' | grep "Rated"
curl -G "http://www.omdbapi.com/?t=$name&apikey=13f411c2" | cut -d "," -f 1- --output-delimiter=$'\n' | grep "Released"
curl -G "http://www.omdbapi.com/?t=$name&apikey=13f411c2" | cut -d "," -f 1- --output-delimiter=$'\n' | grep "Director"
#cut -d "," -f 1- mo.txt --output-delimiter='\n' |grep -v "Title"
#cut -d "," -f 1- mo.txt --output-delimiter=$'\n' | grep "Title"
