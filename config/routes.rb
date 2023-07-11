Rails.application.routes.draw do

get "/exercises" => "exercises#index"
post "/exercises" => "exercises#create"
get "/exercises/:id" => "exercises#show"
delete "/exercises/:id" => "exercises#destroy"
resources :exercises 


get "/recipes" => "recipes#index"
get "/recipes/:id" => "recipes#show"
post "/recipes" => "recipes#create"
delete "/recipes/:id" => "recipes#destroy"

resources :recipes
 


get "/users" => "users#index"
get "/users/:id" => "users#show"
patch "/users/:id" => "users#update"
delete "/users/:id" => "users#destroy"

resources :users


get "/user_exercises" => "user_exercises#index"
get "/user_exercises/:id" => "user_exercises#show"

resources :user_exercises


get "/user_recipes" => "user_recipes#index"
get "/user_recipes/:id" => "user_recipes#show"


resources :user_recipes

end 

