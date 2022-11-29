Rails.application.routes.draw do
  devise_for :users
  root to: "Users#show"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :users, only: %i[show edit update]

  resources :categories, only: %i[index show]

  resources :quests, only: %i[new show] do
    resources :user_quests, only: %i[create show]
  end

  resources :goal do
    resources :user_goals, only: %i[new create]
  end

  resources :skins, only: %i[index show] do
    resources :user_skins, only: %i[create edit update]
  end
end
