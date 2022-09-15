Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/animals" => "animals#index"
  get "/animals/:id" => "animals#show"
  post "/animals" => "animals#create"
end
