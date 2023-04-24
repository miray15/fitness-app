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
    assert_equal ["name", "image_url", "ingredients", "directions", "created_at", "updated_at"], data.keys
  end
  

end
