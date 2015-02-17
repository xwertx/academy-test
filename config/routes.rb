Rails.application.routes.draw do

  root to: 'visitors#index'
  devise_for :users, :controllers => { registrations: 'registrations' }
  resources :users
  match '/users', :to => 'users#index', :as => "all_users", :via => "get"
  get '/cities' => 'cities#index'
end
