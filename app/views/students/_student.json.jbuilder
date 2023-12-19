json.id student.id
json.first_name student.first_name
json.last_name student.last_name
json.email student.email
json.phone_number student.phone_number
json.short_bio student.short_bio
json.capstones student.capstones, partial: "capstones/capstone", as :capstones
json.educations student.educations, partial: "educations/education", as :educations
json.experiences student.experiences, partial: "experiences/experience", as :experiences
json.skills student.skills, partial: "skills/skill", as :skill
json.linkedin_url student.linkedin_url
json.twitter_handle student.twitter_handle
json.personal_url student.personal_url
json.resume_url student.resume_url
json.github_url student.github_url
json.photo student.photo
