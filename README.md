# RECIPES API

An API wrapper built using Ruby on Rails to simplify sending requests to themealdb.com/api.php to retrieve recipes.

## Dependencies

- rest-client
- rspec-rails
- webmock

## Configuration

1. Clone the project
2. Install gems by running this command in your shell:
```sh
$ bundle install
```
3. Start Rails console 
```sh
$ rails c
```
4. Alternatively, you can make requests by running Rails server and typing URLS. The examples listed below use
 localhost:3000
 suffixed with the paths specified in routes.rb

## Usage

The API only provides for GET requests which can be accessed using the commands below:

### Getting a random recipe

```
::MealDb::Client.random
```

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
