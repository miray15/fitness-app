Rails.application.routes.draw do

get "/exercises" => "exercises#index"
post "/exercises" => "exercises#create"
get "/exercises/:id" => "exercises#show"

get "/recipes" => "recipes#index"
get "/recipes/:id" => "recipes#show"
post "/recipes" => "recipes#create"

get "/users" => "users#index"


end
