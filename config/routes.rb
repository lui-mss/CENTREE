Rails.application.routes.draw do
  get '/about_us', to: "pages#about_us"
  # get 'offers/index'
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

  resources :categories, only: [:index, :show]
  resources :offers, only: [:index, :show] do
    resources :chatrooms, only: [:create]
  end

  resources :chatrooms, only: [:index, :show] do
    resources :messages, only: [:create]
  end

end
