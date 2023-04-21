require "test_helper"

class ExercisesControllerTest < ActionDispatch::IntegrationTest
  test "index" do
    get "/exercises.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Exercise.count, data.length
  end

  test "create" do
    assert_difference "Exercise.count", 1 do
      post "/exercises.json", params: { name: "lat pulldown", video: "video", description: "go to the machine and pull", sets: 2, reps: 2 }
      assert_response 200
    end
  end
end
