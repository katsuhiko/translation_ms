Rails.application.routes.draw do
  resources :translation_words

  resources :words

  resources :locales

  resources :dictionaries

  mount Upmin::Engine => '/admin'
  root to: 'visitors#index'
  devise_for :users
  resources :users
end
