Rails.application.routes.draw do
  get 'user_skins/create'
  get 'user_skins/update'
  get 'skins/index'
  get 'skins/show'
  get 'skins/edit'
  get 'user_goals/new'
  get 'user_goals/create'
  get 'user_quests/create'
  get 'user_quests/show'
  get 'quests/show'
  get 'categories/index'
  get 'categories/show'
  get 'users/show'
  get 'users/edit'
  devise_for :users
  # root to: "users#show"
  root to: "pages#home"

  resources :users, only: %i[show edit update]

  resources :categories, only: %i[index show] do
    resources :quests, only: %i[show] do
      resources :user_quests, only: %i[create show]
      resources :user_goals, only: %i[new create]
    end
  end

  resources :skins, only: %i[index show] do
    resources :user_skins, only: %i[create edit update]
  end
end
