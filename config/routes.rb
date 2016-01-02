Rails.application.routes.draw do
  resources :sections, only: [:index, :create, :new] do
    resources :subsections, only: [:new]
  end
end
