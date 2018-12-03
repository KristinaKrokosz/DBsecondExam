Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root to: 'pages#home'
  get 'pages/home'
  get 'pages/about'
  resources :committees
  resources :administrations
  resources :faculties
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
