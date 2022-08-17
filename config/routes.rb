Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # read
  get "articles", to: "articles#index"

  # create
  get "articles/new", to: "articles#new"

  # show
  get "articles/:id", to: "articles#show"

  # edit

  # update

  # destroy

end
