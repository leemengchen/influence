Rails.application.routes.draw do

  resources :jobs
  resources :influencers
  resources :marketers
  root to: "landing#index"
  devise_for :marketers
  devise_for :influencers


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
