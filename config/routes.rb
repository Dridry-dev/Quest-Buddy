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
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
