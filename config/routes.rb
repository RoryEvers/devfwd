Rails.application.routes.draw do
  resources :volunteers
  resources :jobs
  resources :profiles
  devise_for :users
  root 'home#page'
  # get 'home/page'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
