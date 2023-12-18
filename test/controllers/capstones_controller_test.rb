require "test_helper"

class CapstonesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @student = Student.create(first_name: "Steven", last_name: "Ungaro", email: "steven@test.com", phone_number: "555-222-1234", short_bio: "Blah blah blah blah blah blah blah Steven is great blah blah blah.", linkedin_url: "stevenlinkedin.url", twitter_handle: "@steventwitter", personal_url: "steven.url", resume_url: "stevenresume.url", github_url: "stevengit.url", photo: "https://freerangestock.com/sample/2230/childs-drawing-of-happy-face.jpg", password: "password1")
    post "/sessions.json", params: { email: "steven@test.com", password: "password1" }
    data = JSON.parse(response.body)
    @jwt = data["jwt"]
  end
  test "index" do
    get "/capstones.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Capstone.count, data.length
  end
  test "update" do
    capstone = Capstone.first
    patch "/capstones/#{capstone.id}.json", params: { capstone_name: "Updated name" }, headers: { "Authorization" => "Bearer #{@jwt}" }
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal "Updated name", data["capstone_name"]
  end
end
