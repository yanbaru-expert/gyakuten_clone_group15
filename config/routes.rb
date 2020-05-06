Rails.application.routes.draw do
  devise_for :users

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root to: "movies#index"
  resources :questions, only: [:index]

  resources :questions, only: [:create]
  resources :aws_texts, only: [:index]
  resources :aws_texts, only: [:index, :show]

end
