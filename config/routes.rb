Rails.application.routes.draw do
  resources :provinces
  resources :faireanneelangues
  resources :typebourses
  resources :boursiers
  resources :carteconsulaires
  resources :genres
  resources :etudiants
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
