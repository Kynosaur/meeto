# Meeto API

An API built with Sinatra to show and create 'Meetrips'.  Responds to the [Meeto Client](https://github.com/Kynosaur/meeto-client) - please see the README there for full details.

## Instructions

You don't need to do anything with this repo!  It has been deployed to Heroku (you can visit https://meetoapi.herokuapp.com/meetrips in your browser to see, but we suggest using the [Meeto Client](https://github.com/Kynosaur/meeto-client) instead).

## That's great, but I _really_ want to run it on my local machine!

Not a problem!

- Clone this repo
- Install required gems: `$ bundle install`
- Create the databases:
```
$ psql
$ CREATE DATABASE meeto_test;
$ CREATE DATABASE meeto_development;
```
- Run the server: `$ rackup`
- The API will now be running in your terminal window and you can use the [Meeto Client](https://github.com/Kynosaur/meeto-client) to interact with it
