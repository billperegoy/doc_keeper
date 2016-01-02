Rails.application.routes.draw do
  resources :sections, only: [:index, :show, :create, :new] do
    resources :sub_sections, only: [:new, :create, :index, :show]
  end
end
