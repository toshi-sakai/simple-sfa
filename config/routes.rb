Rails.application.routes.draw do
  resources :opportunities

  devise_for :users
  root 'static_pages#home'
end
