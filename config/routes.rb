Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # get "/users/:id", to: "users#show"
  # get "/users", to: "users#index"

  get "/users/:id/posts", to: "posts#index"

  get "/users/:id/posts/:post_id", to: "posts#show"

 # get "/users/:id/posts/:post_id/comments", to: "comments#index"
 # get "/users/new", to: "users#new"



resources :users, only: [:index, :show]
resources :posts, only: [:index, :show]

end
