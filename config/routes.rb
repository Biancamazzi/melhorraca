Rails.application.routes.draw do
  devise_for :users
  resources :quizzes, only: [:show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :questions, only: [:index]
  post "questions/aprove", to: "questions#aprove"
  post "questions/decline", to: "questions#decline"

end
