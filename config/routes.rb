Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'static#home'
  get 'researches', to: "researches#index"
  resources :researches, only: [:create, :edit, :update, :new, :destroy]
  get 'people', to: "collaborators#index"
  resources :collaborators, only: [:create, :edit, :update, :new, :destroy]
  get 'publications', to: "publications#index"
  resources :publications, only: [:create, :edit, :update, :new, :destroy]
  get 'news', to: "static#news"
  get 'contact', to: "static#contact"
end
