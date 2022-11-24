Rails.application.routes.draw do
  resources :questions
  resource :session, only: %i[new create destroy]
  resources :users, only: %i[new create]
  root 'questions#index'
end

