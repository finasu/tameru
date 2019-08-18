Rails.application.routes.draw do
  
  devise_for :users
  
  get "/", to: "home#index"
  get "/account", to: "home#account"
  
  get     "/todos",     to: "todos#index"
  post    "/todos",     to: "todos#store"
  get     "/todos/:id", to: "todos#show"
  put     "/todos/:id", to: "todos#update"
  delete  "/todos/:id", to: "todos#destroy"

end
