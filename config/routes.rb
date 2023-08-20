Rails.application.routes.draw do
  namespace :dashboard do
    get 'players', to: 'players#index'
  end
  devise_for :users
  
  root "welcome#index"
end
