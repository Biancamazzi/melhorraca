Rails.application.routes.draw do
  root to: 'pages#home'
  devise_for :users
  resources :quizzes, only: [:create, :show]
  resources :results, only: [:show]
  get 'results', to: 'results#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :questions, only: [:index, :show]
  post "questions/approve/:id", to: "questions#approve"
  post "questions/decline/:id", to: "questions#decline"
  post "/home/create_quiz", to:"pages#create_quiz"
end
