Rails.application.routes.draw do
  # ユーザー登録（サインアップ）のためのルーティングを追加
  resources :users, only: [:new, :create] , path_names: { new: 'sign_up' }
  
  resource :session
  resources :passwords, param: :token
  root to: "homes#top"
end
