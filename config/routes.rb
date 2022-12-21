Rails.application.routes.draw do
  resources :pets
  get "/signup" => "users#new"
  post "/users" => "users#create"
end
