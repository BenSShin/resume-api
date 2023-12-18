Rails.application.routes.draw do
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
end
