Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "researches#index"
  resources :researches, only: [:create, :edit, :update, :new, :destroy]
  get 'people', to: "collaborators#index"
  resources :collaborators, only: [:create, :edit, :update, :new, :destroy]
  get 'publications', to: "publications#index"
  resources :publications, only: [:create, :edit, :update, :new, :destroy]
  get 'stories', to: "stories#index"
  resources :stories, only: [:create, :edit, :update, :new, :destroy]
  get 'contact', to: "static#contact"
  resources :pictures, only: [:edit, :update]
end
