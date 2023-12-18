Rails.application.routes.draw do
  #education routes
  get "/educations" => "educations#index"
  post "/educations" => "educations#create"
  post "/educations/:id" => "educations#show"

  # experience routes
  get "/experience" => "experience#index"
  get "/experience" => "experience#index"
  get "/experience" => "experience#index"
  get "/experience" => "experience#index"
end
