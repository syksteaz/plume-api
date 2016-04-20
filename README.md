# plume-api
This is a ruby implementation for the Plume API.

Official documentation of the API can be found here: https://plume.readme.io/v1.0/docs

## Versions
###version 0.1
* Added http request to get the recent pollution

## Installation
Add in your gemfile :
gem 'plume-api'
or type in the your favorite shell :
gem install plume-api

## Authentication
You need to get an access token with plumelabs. You get it once you create an account on Plume.io.

## Calling end points
### get_pollution_recent
This method gives you access to the /pollution/recent endpoint

The method takes 2 arguments:
+ 'zone' : you need to check on https://air.plumelabs.com/ if the zone you want data on is covered.
If it is covered, you need to give the argument to the method in capital letters. Ex: for Paris, France, you will need to give 'PARIS'
+ 'period': either 'day', 'month', or 'year'
