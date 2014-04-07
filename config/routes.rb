Quizery::Application.routes.draw do
  root "quizzes#index"

  resources :users

  resources :quizzes do
    resources :questions
  end

  resources :scores

  get "/login", to: "session#new"
  post "/login", to: "session#create"
  delete "/logout", to: "session#destroy"

end
