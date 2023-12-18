# require "test_helper"

# class EducationsControllerTest < ActionDispatch::IntegrationTest
#   test "index" do
#     get "/educations.json"
#     assert_response 200

#     data = JSON.parse(response.body)
#     assert_equal Education.count, data.length
#   end

#   test "create" do
#     assert_difference "Education.count", 1 do
#       post "/educations.json", params: { student_id: 1, start_date: 2022 / 12 / 06, end_date: 2024 / 01 / 01, degree: "degree", university_name: "university", details: "details" }
#       assert_response 200
#     end
#   end

#   test "show" do
#     get "/educations/#{Education.first.id}.json"
#     assert_response 200

#     data = JSON.parse(response.body)
#     assert_equal ["id", "student_id", "start_date", "end_date", "degree", "university_name", "details", "created_at", "updated_at"], data.keys
#   end

#   test "update" do
#     education = Education.first
#     patch "/educations/#{education.id}.json", params: { degree: "Updated degree" }
#     assert_response 200

#     data = JSON.parse(response.body)
#     assert_equal "Updated degree", data["degree"]
#   end

#   test "destroy" do
#     assert_difference "Education.count", -1 do
#       delete "/educations/#{Education.first.id}.json"
#       assert_response 200
#     end
#   end
# end
