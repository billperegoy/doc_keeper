Rails.application.routes.draw do
  resources :sections, only: [:index, :create, :new]
end
