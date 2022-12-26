Rails.application.routes.draw do
  get 'pages/index'
    # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
    root to: 'pages#index'

    resources :causes, only:[:index, :show, :update]
    resources :donations, only:[:create, :index, :destroy]
end
