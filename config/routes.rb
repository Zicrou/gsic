Rails.application.routes.draw do
  devise_for :users, path: '', path_names: {sign_in: 'Login', sign_out: 'Logout', sign_up: 'Register'}
  resources :langueformations
  resources :provinces
  resources :faireanneelangues
  resources :typebourses
  resources :boursiers
  resources :carteconsulaires
  resources :genres
  resources :etudiants
  root to: 'etudiants#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
