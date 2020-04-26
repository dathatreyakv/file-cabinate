Rails.application.routes.draw do
  devise_for :users
  get 'welcome/index'

  # root path -- if already user logged in
  authenticated :user do
    root "docs#index", as: "authenticated_user"
  end
  # default root path 
  root to: 'welcome#index'

  resources :docs
end
