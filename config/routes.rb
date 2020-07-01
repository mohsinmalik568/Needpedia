require 'sidekiq/web'

Rails.application.routes.draw do
  get 'share/create'
  post '/rate' => 'rater#create', :as => 'rate'
  namespace :admin do
    resources :user_gigs
    resources :flags
    resources :likes
    resources :comments
    resources :gigs
    resources :posts
    resources :users
    resources :announcements
    resources :notifications
    # resources :services

    root to: "users#index"
  end
  get '/privacy', to: 'home#privacy'
  get '/time_bank', to: 'home#time_bank'
  get '/terms', to: 'home#terms'
  get '/wall', to: 'profile#wall'
  get '/friends', to: 'profile#friends'
  get '/pictures', to: 'profile#pictures'
  get '/modal_picture', to: 'profile#modal_picture'
  get '/about', to: 'profile#about'
  get '/add_details', to: 'profile#add_details'
  post '/search_results', to: 'profile#search_results'
  patch '/update_details', to: 'profile#update_details'
  get 'connections' => 'profile#my_connections'
  get 'friend_request' => 'profile#friend_request'
  get 'tags/:tag' => 'posts#index', as: :tag
  authenticate :user, lambda {|u| u.admin?} do
    mount Sidekiq::Web => '/sidekiq'
  end


  resources :notifications, only: [:index]
  resources :announcements, only: [:index]

  resources :connection_requests, except: [:edit, :update, :show, :destroy]
  resources :connection_requests, only: [:index]
  scope :connection_requests do
    get 'accept/:uuid' => 'connection_requests#accept', as: 'accept_invitation'
    delete 'reject/:uuid' => 'connection_requests#reject', as: 'reject_invitation'
  end

  resources :connections

  resources :posts do
    get 'layers'
    get 'problems'
    get 'proposals'
    get 'ideas'
    collection do
      get 'search_result'
      get 'all_areas'
      get 'all_layers'
      get 'all_problems'
      get 'all_proposals'
      get 'all_ideas'
    end
  end

  resources :comments

  resources :flags do
    collection do
      get 'reason_modal'
    end
  end

  resources :share, only: [:update]

  resources :likes do
    collection do
      get 'unlike'
    end
  end

  resources :gigs do
    put 'disable'
    collection do
      get 'my_accepted'
      get 'search'
      get 'search_result'
      put 'accept'
    end
  end
  resources :transactions, only: [:create] do
    collection do
      get 'award'
    end
  end

  # resources :profiles do
  #   member do
  #     get 'wall'
  #     get 'friends'
  #     get 'pictures'
  #     get 'about'
  #     get 'add_details'
  #   end
  #   collection do
  #     patch 'update_details'
  #   end
  # end

  devise_for :users, controllers: {omniauth_callbacks: "users/omniauth_callbacks"}
  root to: 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
