# require "test_helper"

# class ExperiencesControllerTest < ActionDispatch::IntegrationTest
#   setup do
#     @student = Student.create(first_name: "test", last_name: "test", email: "test@test.com", phone_number: "555-222-1234", short_bio: "test", linkedin_url: "testlinkedin.url", twitter_handle: "@testtwitter", personal_url: "test.url", resume_url: "stevenresume.url", github_url: "testgit.url", photo: "https://freerangestock.com/sample/2230/childs-drawing-of-happy-face.jpg", password: "password1")
#     post "/sessions.json", params: { email: "test@test.com", password: "password1" }
#     data = JSON.parse(response.body)
#     @jwt = data["jwt"]
#   end

#   test "index" do
#     get "/experiences.json", headers: { "Authorization" => "Bearer #{@jwt}" }
#     assert_response 200

#     data = JSON.parse(response.body)
#     assert_equal Experience.count, data.length
#   end

#   test "create" do
#     assert_difference "Experience.count", 1 do
#       post "/experiences.json",
#         headers: { "Authorization" => "Bearer #{@jwt}" }, params: { start_date: "2024/1/1", end_date: "2024/1/1", job_title: "test", company_name: "test" }
#       data = JSON.parse(response.body)
#       refute_nil data["id"]
#       assert_equal "2024-01-01", data["start_date"]
#       assert_equal "2024-01-01", data["end_date"]
#       assert_equal "test", data["job_title"]
#       assert_equal "test", data["company_name"]
#     end
#     post "/experiences.json"
#     assert_response 401
#   end

#   test "show" do
#     get "/experiences/#{Experience.first.id}.json", headers: { "Authorization" => "Bearer #{@jwt}" }
#     assert_response 200

#     data = JSON.parse(response.body)
#     assert_equal ["id", "student_id", "start_date", "end_date", "job_title", "company_name", "details", "created_at", "updated_at"], data.keys
#   end

#   test "destroy" do
#     assert_difference "Experience.count", -1 do
#       delete "/experiences/#{Experience.first.id}.json", headers: { "Authorization" => "Bearer #{@jwt}" }
#       assert_response 200
#     end
#     delete "/experiences/#{Experience.first.id}.json"
#     assert_response 401
#   end
# end
