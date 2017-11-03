Rails.application.routes.draw do
  get 'ingredients/show'

  resources :cocktails, only: [:index, :show, :new, :create] do
    resources :doses, only: [:new, :create]
  end
    resources :doses, only: [:destroy]

    resources :ingredient, only: [:show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
