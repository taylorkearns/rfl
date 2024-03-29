LawFirm::Application.routes.draw do
  ActiveAdmin.routes(self)

  devise_for :admin_users, ActiveAdmin::Devise.config

  root to: 'pages#index'

  resources :attorneys
  resources :practice_areas
end
