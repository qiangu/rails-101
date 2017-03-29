Rails.application.routes.draw do
  devise_for :users
  resources :groups
    resources :posts do
  end
  root 'groups#index'
end
