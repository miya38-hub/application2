Rails.application.routes.draw do
  resources :post_images, only: [:new, :create, :index, :show, :destroy] do
    resources :post_comments, only: [:create, :destroy]
  end
  # ユーザー登録（サインアップ）のためのルーティングを追加
  resources :users, only: [:new, :create, :show, :edit, :update] , path_names: { new: 'sign_up' }
  
  get "homes/about", to: "homes#about", as: "about"
  resource :session
  resources :passwords, param: :token
  root to: "homes#top"
end
