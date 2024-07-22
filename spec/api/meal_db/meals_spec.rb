require "rails_helper"

RSpec.describe ::MealDb::Client, type: :request do
  let(:base_url) {"www.themealdb.com/api/json/v1/1"}

  let(:headers) do 
    {
      'Content-Type' => 'application/json',
      'Accept' => 'application/json'
    }
  end

  describe '.random' do
    let(:endpoint) {'/random.php'}
    let(:url) {"#{base_url}#{endpoint}"}
    
    let(:random_recipe_data) do 
      {"meals"=>
        [{"idMeal"=>"53075",
          "strMeal"=>"Tortang Talong",
          "strDrinkAlternate"=>nil,
          "strCategory"=>"Vegetarian",
          "strArea"=>"Filipino",
          "strInstructions"=>
          "0.\tGrill the eggplant until the color of skin turns almost black\r\n1.\tLet the eggplant cool for a while then peel off the 
            skin. Set aside.\r\n2.\tCrack the eggs and place in a bowl\r\n3.\tAdd salt and beat\r\n4.\tPlace the eggplant on a flat surface and
            flatten using a fork.\r\n5.\tDip the flattened eggplant in the beaten egg mixture\r\n6.\tHeat the pan and pour the cooking oil\r\n
            7.\tFry the eggplant (that was dipped in the beaten mixture). Make sure that both sides are cooked. Frying time will take you about
            3 to 4 minutes per side on medium heat. \r\n",
          "strMealThumb"=>"https://www.themealdb.com/images/media/meals/va668f1683209318.jpg",
          "strTags"=>nil,
          "strYoutube"=>"https://www.youtube.com/watch?v=eLl8ekOu1MM",
          "strIngredient1"=>"Egg Plants",
          "strIngredient2"=>"Eggs",
          "strIngredient3"=>"Salt",
          "strIngredient4"=>"Olive Oil",
          "strIngredient5"=>"",
          "strIngredient6"=>"",
          "strIngredient7"=>"",
          "strIngredient8"=>"",
          "strIngredient9"=>"",
          "strIngredient10"=>"",
          "strIngredient11"=>"",
          "strIngredient12"=>"",
          "strIngredient13"=>"",
          "strIngredient14"=>"",
          "strIngredient15"=>"",
          "strIngredient16"=>"",
          "strIngredient17"=>"",
          "strIngredient18"=>"",
          "strIngredient19"=>"",
          "strIngredient20"=>"",
          "strMeasure1"=>"4",
          "strMeasure2"=>"2",
          "strMeasure3"=>"1 tsp ",
          "strMeasure4"=>"4 tsp",
          "strMeasure5"=>" ",
          "strMeasure6"=>" ",
          "strMeasure7"=>" ",
          "strMeasure8"=>" ",
          "strMeasure9"=>" ",
          "strMeasure10"=>" ",
          "strMeasure11"=>" ",
          "strMeasure12"=>" ",
          "strMeasure13"=>" ",
          "strMeasure14"=>" ",
          "strMeasure15"=>" ",
          "strMeasure16"=>" ",
          "strMeasure17"=>" ",
          "strMeasure18"=>" ",
          "strMeasure19"=>" ",
          "strMeasure20"=>" ",
          "strSource"=>"https://www.sainsburysmagazine.co.uk/recipes/mains/tortang-talong",
          "strImageSource"=>nil,
          "strCreativeCommonsConfirmed"=>nil,
          "dateModified"=>nil}]}
    end

    context 'when the request is successful' do
      before do
        stub_request(:get, url).to_return(status: 200, body: random_recipe_data.to_json, headers: {'Content-Type' => 'application/json'})
      end

      it 'returns the correct response' do
        response = ::MealDb::Client.random
        expect(response[:code]).to eq(200)
        expect(response[:status]).to eq('Success')
        expect(response[:data]).to eq(random_recipe_data)
      end
    end
  end

end