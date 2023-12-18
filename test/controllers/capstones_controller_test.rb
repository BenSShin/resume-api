require "test_helper"

class CapstonesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @student = Student.create(first_name: "Test", email: "test@test.com", password: "password")
    post "/sessions.json", params: { email: "test@test.com", password: "password" }
    data = JSON.parse(response.body)
    @jwt = data["jwt"]
  end
  test "index" do
    get "/capstones.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Capstone.count, data.length
  end
end
