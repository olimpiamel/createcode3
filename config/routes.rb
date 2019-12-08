Rails.application.routes.draw do
  devise_for :creators
  resources :creations

  get 'static_pages/index'
  root 'static_pages#index'

  get "/views/static_pages/contingency", to: "static_pages#contingency", as: "contingency"


end
