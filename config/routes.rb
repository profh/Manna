Rails.application.routes.draw do
  resources :documents
  resources :case_documents
  resources :votes
  resources :cases
  resources :users
  resources :sessions


  get 'home' => 'home#home', as: :home


  get 'user/edit' => 'users#edit', :as => :edit_current_user
  get 'signup' => 'users#new', :as => :signup
  get 'login' => 'sessions#new', :as => :login
  get 'logout' => 'sessions#destroy', :as => :logout

  get "shift/start_now" => "shifts#start_now", :as => :start_now
  get "shift/end_now" => "shifts#end_now", :as => :end_now

  root :to => 'home#home'
end
