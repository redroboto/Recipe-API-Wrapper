module MealDb
  class Client
    def self.random
      response = Request.call("get", "/random.php")
    end

    def self.categories
      response = Request.call("get", "/categories.php")
    end

    def self.search_by_name(name)
      response = Request.call("get", "/search.php", {params: {"s" => "#{name}"}})
    end
  end
end