Quizery::Application.routes.draw do
  root "users#index"

  resources :users
  resources :quizzes do
    resources :questions
  end


  get "/login", to: "session#new"
  post "/login", to: "session#create"
  delete "/logout", to: "session#destroy"

end
