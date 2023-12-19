require "test_helper"

class StudentsControllerTest < ActionDispatch::IntegrationTest
  test "index" do
    get "/students.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Student.count, data.length
  end
  test "create" do
    assert_difference "Student.count", 1 do
      post "/students.json", params: { first_name: "test", last_name: "test l", email: "test@mail.com", phone_number: "test number", short_bio: "test bio", linkedin_url: "test url", twitter_handle: "test", personal_url: "test", resume_url: "test", github_url: "test", photo: "test", password: "test" }
      assert_response 200
    end
  end

  test "show" do
    get "/students/#{Student.first.id}.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal ["id", "first_name", "last_name", "email", "phone_number", "short_bio", "capstones", "educations", "experiences", "skills", "linkedin_url", "twitter_handle", "personal_url", "resume_url", "github_url", "photo"], data.keys
  end

  setup do
    @student = Student.create(first_name: "test", last_name: "test", email: "test@test.com", phone_number: "555-222-1234", short_bio: "test", linkedin_url: "testlinkedin.url", twitter_handle: "@testtwitter", personal_url: "test.url", resume_url: "stevenresume.url", github_url: "testgit.url", photo: "https://freerangestock.com/sample/2230/childs-drawing-of-happy-face.jpg", password: "password1")
    post "/sessions.json", params: { email: "test@test.com", password: "password1" }
    data = JSON.parse(response.body)
    @jwt = data["jwt"]
  end

  test "update" do
    student = Student.first
    patch "/students/#{student.id}.json", params: { first_name: "Updated first_name" }, headers: { "Authorization" => "Bearer #{@jwt}" }
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal "Updated first_name", data["first_name"]
  end

  test "destroy" do
    assert_difference "Student.count", -1 do
      delete "/students/#{Student.first.id}.json", headers: { "Authorization" => "Bearer #{@jwt}" }
      assert_response 200
    end
  end
end
