Rails.application.routes.draw do
  get 'tops/huro' => 'tops#huro'
  get 'tops/sauna' => 'tops#sauna'
  get 'tops/meals' => 'tops#meals'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:show] # ユーザーマイページへのルーティング
  resources :tops
  resources :tweets
  root 'tops#index'
end
