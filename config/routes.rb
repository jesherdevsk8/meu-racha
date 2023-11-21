Rails.application.routes.draw do
  namespace :dashboard do
    resources :players
  end

  devise_for :users

  root 'welcome#index'
end
