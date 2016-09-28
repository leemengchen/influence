Rails.application.routes.draw do

  devise_for :marketers
  devise_for :influencers
  root to: "landing#index"


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
