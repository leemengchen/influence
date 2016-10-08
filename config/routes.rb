Rails.application.routes.draw do


  get 'transactions/new'

  get :about, to: 'static_pages#about'
  get :terms, to: 'static_pages#terms'
  get :privacy, to: 'static_pages#privacy'
  get 'tags/:tag', to: 'jobs#index', as: :tag


  
  resources :transactions, only: [:new, :create]


  resources :jobs do
    resources :comments
  end
  resources :influencersstatic, only: [:index, :show]
  resources :marketersstatic, only: [:index, :show]
  resources :dashboard, only: [:index]
  root to: "landing#index"
  devise_for :marketers, controllers:
  {
    sessions: 'marketers/sessions',
    registrations: 'marketers/registrations',
    passwords: 'marketers/passwords',
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
