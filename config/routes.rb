# frozen_string_literal: true

Rails.application.routes.draw do
  get 'users/new'
  resources :properties

  devise_scope :user do
    get '/sign_in' => 'devise/sessions#new' # custom path to login/sign_in
    get '/sign_up' => 'devise/registrations#new', as: 'new_user_registration' # custom path to sign_up/registration
  end

  devise_for :users

  authenticated :user do
    root 'pages#my_rebus_app', as: :authenticated_root
  end
  root 'pages#home'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
