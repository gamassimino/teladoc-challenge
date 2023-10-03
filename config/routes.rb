Rails.application.routes.draw do
  resources :users, only: [:show]

  # code for PROBLEM 2
  # get "/users/other_1", to: "users#other_1"
  # get "/users/other_2", to: "users#other_2"
  # get "/users/other_3", to: "users#other_3"
end
