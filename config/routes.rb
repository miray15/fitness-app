Rails.application.routes.draw do

get "/exercises" => "exercises#index"
post "/exercises" => "exercises#create"
get "/exercises/:id" => "exercises#show"
delete "/exercises/:id" => "exercises#destroy"

get "/recipes" => "recipes#index"
get "/recipes/:id" => "recipes#show"
post "/recipes" => "recipes#create"
delete "/recipes/:id" => "recipes#destroy"
 


get "/users" => "users#index"
get "/users" => "users#show"
patch "/users/:id" => "users#update"
delete "/users/:id" => "users#destroy"

get "/user_exerises" => "users#index"
get "/user_exerises/:id" => "users#show"
end
