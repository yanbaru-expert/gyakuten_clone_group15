Rails.application.routes.draw do
   HEAD
  devise_for :users

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  master
  root to: "movies#index"
end
