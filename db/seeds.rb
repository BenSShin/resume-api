# Student Seeds
Student.create!([
  { first_name: "Steven", last_name: "Ungaro", email: "steven@test.com", phone_number: "555-222-1234", short_bio: "Blah blah blah blah blah blah blah Steven is great blah blah blah.", linkedin_url: "stevenlinkedin.url", twitter_handle: "@steventwitter", personal_url: "steven.url", resume_url: "stevenresume.url", github_url: "stevengit.url", photo: "https://freerangestock.com/sample/2230/childs-drawing-of-happy-face.jpg", password: "password1" },
  { first_name: "Derek", last_name: "McGee", email: "Derek@test.com", phone_number: "555-222-1234", short_bio: "Blah blah blah blah blah blah blah Derek is great blah blah blah.", linkedin_url: "Dereklinkedin.url", twitter_handle: "@Derektwitter", personal_url: "Derek.url", resume_url: "derekresume.url", github_url: "Derekgit.url", photo: "https://content.instructables.com/FDR/N9IS/GZ38J94Q/FDRN9ISGZ38J94Q.jpg?auto=webp&frame=1&fit=bounds&md=b8d0a1f7429e833587242c18a9f59b60", password: "password1" },
  { first_name: "Baila", last_name: "Simcha", email: "Baila@test.com", phone_number: "555-222-1234", short_bio: "Blah blah blah blah blah blah blah Baila is great blah blah blah.", linkedin_url: "Bailalinkedin.url", twitter_handle: "@Bailatwitter", personal_url: "Baila.url", resume_url: "bailaresume.url", github_url: "Bailagit.url", photo: "https://empoweredparents.co/storage/2021/03/childs-drawing-of-a-person-with-a-face.jpg", password: "password1" },
  { first_name: "Jack", last_name: "Connolly", email: "Jack@test.com", phone_number: "555-222-1234", short_bio: "Blah blah blah blah blah blah blah Jack is great blah blah blah.", linkedin_url: "Jacklinkedin.url", twitter_handle: "@Jacktwitter", personal_url: "Jack.url", resume_url: "jackresume.url", github_url: "Jackgit.url", photo: "https://media.npr.org/assets/img/2014/08/19/child-drawing-b4c0793641bcda910b47459d1e17fa7a774dc351.jpg?s=6", password: "password1" },
  { first_name: "Ben", last_name: "Shin", email: "ben@test.com", phone_number: "555-222-1234", short_bio: "Blah blah blah blah blah blah blah ben is great blah blah blah.", linkedin_url: "benlinkedin.url", twitter_handle: "@bentwitter", personal_url: "ben.url", resume_url: "benresume.url", github_url: "bengit.url", photo: "https://fiverr-res.cloudinary.com/images/q_auto,f_auto/gigs/334825713/original/038004f584a33a399f29de19715ea6b2f4309e21/draw-anything-you-want-but-i-will-do-it-like-a-5-year-old.png", password: "password1" },
])

# Experience Seeds
Experience.create!([
  { start_date: Date.new(2017 / 5 / 01), end_date: Date.new(2020 / 8 / 20), job_title: "Batman", company_name: "Gotham, Inc.", details: "Saving the city all night.", student_id: 1 },
  { start_date: Date.new(2020 / 8 / 21), end_date: Date.new(2023 / 11 / 3), job_title: "Bruce Wayne", company_name: "Wayne, Inc.", details: "Saving the city all day.", student_id: 1 },
  { start_date: Date.new(2017 / 5 / 01), end_date: Date.new(2020 / 8 / 20), job_title: "Batman", company_name: "Gotham, Inc.", details: "Saving the city all night.", student_id: 2 },
  { start_date: Date.new(2020 / 8 / 21), end_date: Date.new(2023 / 11 / 3), job_title: "Bruce Wayne", company_name: "Wayne, Inc.", details: "Saving the city all day.", student_id: 2 }, { start_date: Date.new(2017 / 5 / 01), end_date: Date.new(2020 / 8 / 20), job_title: "Batman", company_name: "Gotham, Inc.", details: "Saving the city all night.", student_id: 3 },
  { start_date: Date.new(2020 / 8 / 21), end_date: Date.new(2023 / 11 / 3), job_title: "Bruce Wayne", company_name: "Wayne, Inc.", details: "Saving the city all day.", student_id: 3 }, { start_date: Date.new(2017 / 5 / 01), end_date: Date.new(2020 / 8 / 20), job_title: "Batman", company_name: "Gotham, Inc.", details: "Saving the city all night.", student_id: 4 },
  { start_date: Date.new(2020 / 8 / 21), end_date: Date.new(2023 / 11 / 3), job_title: "Bruce Wayne", company_name: "Wayne, Inc.", details: "Saving the city all day.", student_id: 4 }, { start_date: Date.new(2017 / 5 / 01), end_date: Date.new(2020 / 8 / 20), job_title: "Batman", company_name: "Gotham, Inc.", details: "Saving the city all night.", student_id: 5 },
  { start_date: Date.new(2020 / 8 / 21), end_date: Date.new(2023 / 11 / 3), job_title: "Bruce Wayne", company_name: "Wayne, Inc.", details: "Saving the city all day.", student_id: 5 },
])

# Education Seeds
Education.create!([
  { start_date: Date.new(2012 / 8 / 15), end_date: Date.new(2016 / 5 / 31), degree: "Software Development", university_name: "Actualize", details: "I learned how to code and stuff. It was really fun.", student_id: 1 },
  { start_date: Date.new(2012 / 8 / 15), end_date: Date.new(2016 / 5 / 31), degree: "Software Development", university_name: "Actualize", details: "I learned how to code and stuff. It was really fun.", student_id: 2 },
  { start_date: Date.new(2012 / 8 / 15), end_date: Date.new(2016 / 5 / 31), degree: "Software Development", university_name: "Actualize", details: "I learned how to code and stuff. It was really fun.", student_id: 3 },
  { start_date: Date.new(2016 / 6 / 15), end_date: Date.new(2017 / 4 / 20), degree: "Software Engineering", university_name: "ChatGPT University", details: "I learned how to do even more code and stuff. It was really fun.", student_id: 3 },
  { start_date: Date.new(2012 / 8 / 15), end_date: Date.new(2016 / 5 / 31), degree: "Software Development", university_name: "Actualize", details: "I learned how to code and stuff. It was really fun.", student_id: 4 },
  { start_date: Date.new(2012 / 8 / 15), end_date: Date.new(2016 / 5 / 31), degree: "Software Development", university_name: "Actualize", details: "I learned how to code and stuff. It was really fun.", student_id: 5 },
  { start_date: Date.new(2016 / 6 / 15), end_date: Date.new(2017 / 4 / 20), degree: "Software Engineering", university_name: "ChatGPT University", details: "I learned how to do even more code and stuff. It was really fun.", student_id: 5 },
])

# Skill Seeds
Skill.create([
  { skill_name: "Ruby", student_id: 1 },
  { skill_name: "Rails", student_id: 1 },
  { skill_name: "React", student_id: 1 },
  { skill_name: "Vue", student_id: 1 },
  { skill_name: "Python", student_id: 1 },
  { skill_name: "Being Steven", student_id: 1 },
  { skill_name: "Ruby", student_id: 2 },
  { skill_name: "Rails", student_id: 2 },
  { skill_name: "React", student_id: 2 },
  { skill_name: "Vue", student_id: 2 },
  { skill_name: "Python", student_id: 2 },
  { skill_name: "Being Derek", student_id: 2 }, { skill_name: "Ruby", student_id: 3 },
  { skill_name: "Rails", student_id: 3 },
  { skill_name: "React", student_id: 3 },
  { skill_name: "Vue", student_id: 3 },
  { skill_name: "Python", student_id: 3 },
  { skill_name: "Being Baila", student_id: 3 }, { skill_name: "Ruby", student_id: 4 },
  { skill_name: "Rails", student_id: 4 },
  { skill_name: "React", student_id: 4 },
  { skill_name: "Vue", student_id: 4 },
  { skill_name: "Python", student_id: 4 },
  { skill_name: "Being Jack", student_id: 4 }, { skill_name: "Ruby", student_id: 5 },
  { skill_name: "Rails", student_id: 5 },
  { skill_name: "React", student_id: 5 },
  { skill_name: "Vue", student_id: 5 },
  { skill_name: "Python", student_id: 5 },
  { skill_name: "Being Ben", student_id: 5 },
])

# Capstone Seeds
Capstone.create([
  { capstone_name: "Board Game Capstone", description: "This is a realy long description of what my casptone does and it's so good it will really blow your mind oh my gosh i can't believe it.", url: "capstone.url", screenshot: "https://cdn.jewishboston.com/uploads/2017/01/iStock-520659161-729x486.jpg", student_id: 1 },
  { capstone_name: "Video Game Capstone", description: "This is a realy long description of what my casptone does and it's so good it will really blow your mind oh my gosh i can't believe it.", url: "capstone.url", screenshot: "https://media.istockphoto.com/id/1334436084/photo/top-down-view-of-colorful-illuminated-gaming-accessories-laying-on-table.jpg?s=612x612&w=0&k=20&c=E9xnbAZoBS5LlUX0q-zxT_3m6gEZpyB2k51_U4LLMNs=", student_id: 2 },
  { capstone_name: "Baila Capstone", description: "This is a realy long description of what my casptone does and it's so good it will really blow your mind oh my gosh i can't believe it.", url: "capstone.url", screenshot: "https://www.foodiesfeed.com/wp-content/uploads/2023/06/pouring-honey-on-pancakes.jpg", student_id: 3 },
  { capstone_name: "Music Capstone", description: "This is a realy long description of what my casptone does and it's so good it will really blow your mind oh my gosh i can't believe it.", url: "capstone.url", screenshot: "https://img.freepik.com/free-photo/abstract-watercolor-guitar-exploding-with-colorful-motion-generated-by-ai_188544-19725.jpg", student_id: 4 },
  { capstone_name: "Ben Capstone", description: "This is a realy long description of what my casptone does and it's so good it will really blow your mind oh my gosh i can't believe it.", url: "capstone.url", screenshot: "https://media.cnn.com/api/v1/images/stellar/prod/181114125847-korean-food-2620003201012137k-kimchi-assortment.jpg?q=w_1600,h_900,x_0,y_0,c_fill", student_id: 5 },
  { capstone_name: "Board Game Capstone_2", description: "This is a realy long description of what my casptone does and it's so good it will really blow your mind oh my gosh i can't believe it.", url: "Capstone_2.url", screenshot: "https://fundore.com/assets/uploads/entertainment/8t8cp7sal449jx6ceyw4.jpg", student_id: 1 },
  { capstone_name: "Video Game Capstone_2", description: "This is a realy long description of what my casptone does and it's so good it will really blow your mind oh my gosh i can't believe it.", url: "Capstone_2.url", screenshot: "https://images.unsplash.com/photo-1581810476461-bcffde6c6904?w=420&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxjb2xsZWN0aW9uLXRodW1ibmFpbHx8MTE2MzQzMDB8fGVufDB8fHx8fA%3D%3D", student_id: 2 },
  { capstone_name: "Baila Capstone_2", description: "This is a realy long description of what my casptone does and it's so good it will really blow your mind oh my gosh i can't believe it.", url: "Capstone_2.url", screenshot: "https://images.unsplash.com/photo-1606787366850-de6330128bfc?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8OHx8fGVufDB8fHx8fA%3D%3D", student_id: 3 },
  { capstone_name: "Music Capstone_2", description: "This is a realy long description of what my casptone does and it's so good it will really blow your mind oh my gosh i can't believe it.", url: "Capstone_2.url", screenshot: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQay4J8p1n9tbvxjG5iFBp3Ri8t-Ole9YyYPT3KjM8eamGHtV-nO7ARrzk2g6lIxl73bXU&usqp=CAU", student_id: 4 },
  { capstone_name: "Ben Capstone_2", description: "This is a realy long description of what my casptone does and it's so good it will really blow your mind oh my gosh i can't believe it.", url: "Capstone_2.url", screenshot: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT0V0cNwi6VCnKAzkLzxm4_vnf2hGX8h01L5EMAgv5-J1koVZno8n2I9m6WEdPtyYKGlWE&usqp=CAU", student_id: 5 },
])
