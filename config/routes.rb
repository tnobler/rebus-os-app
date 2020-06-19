# frozen_string_literal: true

Rails.application.routes.draw do
  resources :properties
  devise_for :users
  root 'pages#home'
  get 'pages/my_rebus_app'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
