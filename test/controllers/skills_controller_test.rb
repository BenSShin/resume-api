require "test_helper"

class SkillsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = Student.create(first_name: "Steven", last_name: "Ungaro", email: "test@test.com", phone_number: "555-222-1234", short_bio: "Blah blah blah blah blah blah blah Steven is great blah blah blah.", linkedin_url: "stevenlinkedin.url", twitter_handle: "@steventwitter", personal_url: "steven.url", resume_url: "stevenresume.url", github_url: "stevengit.url", photo: "https://freerangestock.com/sample/2230/childs-drawing-of-happy-face.jpg", password: "password")
    @skill = Skill.create(skill_name: "Test", student_id: @user.id)
    post "/sessions.json", params: { email: "test@test.com", password: "password" }
    data = JSON.parse(response.body)
    @jwt = data["jwt"]
  end

  test "index" do
    get "/skills.json", headers: { "Authorization" => "Bearer #{@jwt}" }
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Skill.count, data.length
  end

  test "create" do
    assert_difference "Skill.count", 1 do
      post "/skills.json", headers: { "Authorization" => "Bearer #{@jwt}" }, params: { skill_name: "Test", student_id: Student.first.id }
      assert_response 200
    end
  end

  test "show" do
    get "/skills/#{Skill.first.id}.json", headers: { "Authorization" => "Bearer #{@jwt}" }
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal ["id", "skill", "created_at", "updated_at"], data.keys
  end

  test "update" do
    skill = Skill.first
    patch "/skills/#{skill.id}.json", headers: { "Authorization" => "Bearer #{@jwt}" }, params: { skill_name: "Updated skill", student_id: Student.first.id }
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal "Updated skill", data["skill"]
  end

  test "destroy" do
    assert_difference "Skill.count", -1 do
      delete "/skills/#{Skill.first.id}.json", headers: { "Authorization" => "Bearer #{@jwt}" }
      assert_response 200
    end
  end
end
