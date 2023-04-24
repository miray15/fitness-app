require "test_helper"

class RecipesControllerTest < ActionDispatch::IntegrationTest
  
  test "index" do
    get "/recipes.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Recipe.count, data.length
  end
  
  test "show" do
    get "/recipes/#{Recipe.first.id}.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal ["id", "name", "image_url", "ingredients", "directions"], data.keys
  end

  test "create" do
    assert_difference "Recipe.count", 1 do
      post "/recipes.json", params: { name: "blueberry pie", image_url: "NA", ingredients: "blueberries, pie", directions: "mix and bake" }
      assert_response 200
    end
  end
  

end
