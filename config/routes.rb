Rails.application.routes.draw do

get "/exercises" => "exercises#index"
post "/exercises" => "exercises#create"
end
