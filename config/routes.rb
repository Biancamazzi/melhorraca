Rails.application.routes.draw do
  root to: 'pages#home'
  devise_for :users
  resources :quizzes, only: [:create, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :questions, only: [:index]
  post "questions/approve", to: "questions#approve"
  post "questions/decline", to: "questions#decline"

end
