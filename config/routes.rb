Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/*
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest

  resources :programmes, only: %i[ new create show destroy] do
    resources :splits, only: %i[ index ]
    resources :workouts, only: %i[ index ]
  end

  resources :splits, only: :show do
    # resources :exercises, only: []
    resources :split_exercises, only: [:create]
    resources :workouts, only: :create
  end

  resources :workouts, only: [] do
    resources :logs, only: :index
    resources :split_exercises, only: [] do
      resources :logs, only: :create
    end
    # now sure about the new maybe can be deleted
  end

  resources :split_exercises, only: [:destroy]
  get "account", to: "pages#account"
  # Defines the root path route ("/")
  # root "posts#index"
end
