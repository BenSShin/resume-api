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
    assert_equal ["first_name", "last_name", "email", "phone_number", "short_bio", "capstones", "educations", "experiences", "skills", "linkedin_url", "twitter_handle", "personal_url", "resume_url", "github_url", "photo"], data.keys
  end

  test "update" do
    student = Student.first
    patch "/students/#{student.id}.json", params: { first_name: "Updated name" }
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal "Updated first_name", data["first_name"]
  end
end
