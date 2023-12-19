require "test_helper"

class EducationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @student = Student.create(first_name: "Steven", last_name: "Ungaro", email: "steven@test.com", phone_number: "555-222-1234", short_bio: "Blah blah blah blah blah blah blah Steven is great blah blah blah.", linkedin_url: "stevenlinkedin.url", twitter_handle: "@steventwitter", personal_url: "steven.url", resume_url: "stevenresume.url", github_url: "stevengit.url", photo: "https://freerangestock.com/sample/2230/childs-drawing-of-happy-face.jpg", password: "password1")
    @education = Education.create(student_id: @student.id)
    post "/sessions.json", params: { email: "steven@test.com", password: "password1" }
    data = JSON.parse(response.body)
    @jwt = data["jwt"]
  end

  test "index" do
    get "/educations.json", headers: { "Authorization" => "Bearer #{@jwt}" }
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Education.count, data.length
  end

  test "create" do
    assert_difference "Education.count", 1 do
      post "/educations.json", headers: { "Authorization" => "Bearer #{@jwt}" }, params: { start_date: "2024 - 01 - 01", end_date: "2024 - 01 - 01", degree: "test", university_name: "test", details: "test" }
    end
    assert_response 200
  end

  test "show" do
    get "/educations/#{Education.first.id}.json", headers: { "Authorization" => "Bearer #{@jwt}" }
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal ["id", "student_id", "start_date", "end_date", "degree", "university_name", "details", "created_at", "updated_at"], data.keys
  end

  test "update" do
    education = Education.first
    patch "/educations/#{education.id}.json",
          params: { degree: "Updated degree" },
          headers: { "Authorization" => "Bearer #{@jwt}" }
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal "Updated degree", data["degree"]
  end

  test "destroy" do
    assert_difference "Education.count", -1 do
      delete "/educations/#{Education.first.id}.json", headers: { "Authorization" => "Bearer #{@jwt}" }
      assert_response 200
    end
  end
end
