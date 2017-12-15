#!/usr/bin/env bash

echo 'Starting to create website'
cd ..
rm -rf ui
echo 'Removed old UI folder, starting clone of React Boilerplate'
git clone --depth=1 https://github.com/react-boilerplate/react-boilerplate.git
mv react-boilerplate ui
cd ui
echo 'Clone Complete, running NPM setup'
npm run setup
echo 'Run setup Complete'
mv /scripts/Dockerfile /ui
mv /scripts/docker-compose.yml /ui
mv /scripts/docker-compose-production.yml /ui

echo 'Finished.'


