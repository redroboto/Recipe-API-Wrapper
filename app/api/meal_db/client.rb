module MealDb
  class Client
    def self.random
      response = Request.call("get", "/random.php")
    end

    def self.list_categories
      response = Request.call("get", "/categories.php")
    end

    def self.list_ingredients
      response = Request.call("get", "/list.php?i=list")
    end

    def self.list_cuisines
      response = Request.call("get", "/list.php?a=list")
    end

    def self.search_by_name(name)
      response = Request.call("get", "/search.php", {params: {"s" => "#{name}"}})
    end

    def self.filter_by_category(category)
      response = Request.call("get", "/filter.php", {params: {"c" => "#{category}"}})
    end

    def self.filter_by_ingredient(ingredient)
      response = Request.call("get", "/filter.php", {params: {"i" => "#{ingredient}"}})
    end
  end
end