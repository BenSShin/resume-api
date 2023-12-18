Rails.application.routes.draw do

  #education routes
  get "/educations" => "educations#index"
  post "/educations" => "educations#create"
  post "/educations/:id" => "educations#show"
  patch "/educations/:id" => "educations#update"
  delete "/educations/:id" => "educations#destroy"

  # For Capstones
  get "/capstones/:id" => "capstones#show"
  get "/capstones" => "capstones#index"
  post "/capstones" => "capstones#create"
  patch "/capstones/:id" => "capstones#update"
  delete "/capstones/:id" => "capstones#destroy"

  # For Skills
  get "/skills/:id" => "skills#show"
  get "/skills" => "skills#index"
  post "/skills" => "skills#create"
  patch "/skills/:id" => "skills#update"
  delete "/skills/:id" => "skills#destroy"

  # For Login
  post "/sessions" => "sessions#create"
  
  # experience routes
  get "/experience" => "experience#index"
  get "/experience" => "experience#index"
  get "/experience" => "experience#index"
  get "/experience" => "experience#index"

  get "/students" => "students#index"
  get "/students/:id" => "students#show"
  post "/students" => "students#create"
  patch "/students/:id" => "students#update"
  delete "/students/:id" => "students#destroy"


end
