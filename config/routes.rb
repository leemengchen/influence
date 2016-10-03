Rails.application.routes.draw do

  resources :jobs
  resources :influencersstatic, only: [:index, :show]
  resources :marketersstatic, only: [:index, :show]
  root to: "landing#index"
  devise_for :marketers, controllers:
  {
    sessions: 'marketers/sessions',
    registrations: 'marketers/registrations',
    passwords: 'marketers/passwords'
  }
  devise_for :influencers, controllers:
  {
    sessions: 'influencers/sessions',
    registrations: 'influencers/registrations',
    passwords: 'influencers/passwords',
    omniauth_callbacks: 'influencers/omniauth_callbacks'
  }

  devise_scope :influencer do
  delete 'sign_out', :to => 'devise/sessions#destroy', :as => :destroy_user_session
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
