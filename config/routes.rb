LawFirm::Application.routes.draw do
  root to: 'pages#index'

  resources :attorneys
end
