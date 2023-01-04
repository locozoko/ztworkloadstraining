#!/usr/bin/env bash

echo "--> Updating GIT Repo"
git pull
echo

echo "--> Pulling images:"
docker-compose pull
echo

echo "--> Start docker-compose build and launch containers if successful:"
docker-compose up --remove-orphans --build -d
echo

#echo "--> Prune Images:"
#docker image prune -a -f
#echo

#echo "--> Docker Status"
#docker ps
#echo
