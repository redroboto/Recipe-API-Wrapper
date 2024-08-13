# RECIPES API WRAPPER

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

URL suffix: /meals/random

### List all available recipe categories, ingredients, or cuisines

```
::MealDb::Client.list_categories
```

URL suffix: /meals/categories

```
::MealDb::Client.list_ingredients
```

URL suffix: /meals/ingredients

```
::MealDb::Client.list_cuisines
```

URL suffix: /meals/cuisines

### Searching by recipe category, ingredient, or cuisine

```
::MealDb::Client.filter_by_category(category)
```

URL suffix: /meals/category/:category

```
::MealDb::Client.filter_by_ingredient(ingredient)
```

URL suffix: /meals/ingredient/:ingredient

```
::MealDb::Client.filter_by_cuisine(cuisine)
```

URL suffix: /meals/cuisine/:cuisine

### Searching by recipe name

::MealDb::Client.search_by_name(name)

URL suffix: /meals/name/:name

## Testing

To start the test suite, run the following command:

```sh
$ bundle exec rspec
```

## Contributing

For contributions, interested users may submit a pull request. 
