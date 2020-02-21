Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
# get 'cocktails', to: 'cocktails#index'
# get 'cocktails/new', to: 'cocktails#new'
# get 'cocktails/:id', to: 'cocktails#show', as: :cocktail
# post 'cocktails', to: 'cocktails#create'

# get 'cocktails/:id/doses/new', to: 'doses#new'
# post 'cocktails/:id/doses', to: 'doses#create'
# delete "cocktails/:id/doses/:id", to: "doses#destroy"

  root to: "cocktails#index"
  resources :cocktails, only: [:index, :show, :new, :create] do
    resources :doses, only: [:create, :new]
  end
  resources :doses, only: [:destroy]
end
