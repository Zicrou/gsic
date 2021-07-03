Rails.application.routes.draw do
  resources :bureausmembers
  resources :profils
  resources :docs
  resources :newinformations
  resources :students
  resources :zones
  resources :niveauformations
  get 'page/index'
  resources :yes_nos
  devise_for :users, path: '', path_names: {sign_in: 'Login', sign_out: 'Logout', sign_up: 'Register', password: 'password'}, controllers: { passwords: 'users/passwords'}
  resources :langueformations
  resources :provinces
  resources :faireanneelangues
  resources :typebourses
  resources :boursiers
  resources :carteconsulaires
  resources :genres
  resources :etudiants do
    collection do
      get :mazone
    end
    collection do
      get :carte_membre
    end
    collection do
      get :generate_matricule_member_card
    end
  end
  #get '/check.txt', to: proc {[200, {}, ['working']]}
  root to: 'page#index'
  #devise_scope :user do
  #  root to: "devise/sessions#new"
  #end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
