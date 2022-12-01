Rails.application.routes.draw do
  devise_for :users
  root to: "users#show"
  # root to: "pages#home"

  resources :users, only: %i[show edit update]

  resources :categories, only: %i[index show] do
    resources :quests, only: %i[show] do
      resources :user_quests, only: %i[create show]
      resources :user_goals, only: %i[new create]
    end
  end

  resources :skins, only: %i[index edit update show] do
    resources :user_skins, only: %i[create edit update]
  end
end
