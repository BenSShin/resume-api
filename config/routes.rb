Rails.application.routes.draw do
  get "/educations" => "educations#index"
  post "/educations" => "educations#create"
end
