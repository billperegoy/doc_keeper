Rails.application.routes.draw do
  get 'pages/home'
  get 'pages/about'

  resources :sections, only: [:index, :show, :create, :new] do
    resources :sub_sections, only: [:new, :create, :index, :show]
  end
end
