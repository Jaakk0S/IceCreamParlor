#!/bin/sh

cd /microservices/IceCreamParlor-OrderService-main || exit
npm install
npm run test-nopretty
