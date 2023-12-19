require "test_helper"

class CapstonesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @student = Student.create(first_name: "Steven", last_name: "Ungaro", email: "steven@test.com", phone_number: "555-222-1234", short_bio: "Blah blah blah blah blah blah blah Steven is great blah blah blah.", linkedin_url: "stevenlinkedin.url", twitter_handle: "@steventwitter", personal_url: "steven.url", resume_url: "stevenresume.url", github_url: "stevengit.url", photo: "https://freerangestock.com/sample/2230/childs-drawing-of-happy-face.jpg", password: "password1")
    post "/sessions.json", params: { email: "steven@test.com", password: "password1" }
    data = JSON.parse(response.body)
    @jwt = data["jwt"]
  end
  test "create" do
    assert_difference "Capstone.count", 1 do
      post "/capstones.json", params: { capstone_name: "test", description: "test", url: "test", screenshot: "test" }, headers: { "Authorization" => "Bearer #{@jwt}" }
      assert_response 200
    end
  end
  test "index" do
    get "/capstones.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Capstone.count, data.length
  end
  test "show" do
    get "/capstones/#{Capstone.first.id}.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal ["id", "capstone_name", "description", "url", "screenshot", "student", "created_at", "updated_at"], data.keys
  end
  test "update" do
    capstone = Capstone.first
    patch "/capstones/#{capstone.id}.json", params: { capstone_name: "Updated name" }, headers: { "Authorization" => "Bearer #{@jwt}" }
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal "Updated name", data["capstone_name"]
  end
  test "destroy" do
    assert_difference "Capstone.count", -1 do
      delete "/capstones/#{Capstone.first.id}.json", headers: { "Authorization" => "Bearer #{@jwt}" }
      assert_response 200
    end
  end
end
