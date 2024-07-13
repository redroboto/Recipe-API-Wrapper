module MealDb
  class Client
    def self.random
      response = Request.call("get", "/random.php")
    end
  end
end