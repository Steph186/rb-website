Rails.application.routes.draw do
  get 'labs/new'
  get 'labs/create'
  get 'labs/edit'
  get 'labs/update'
  get 'labs/destroy'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "researches#index"
  resources :researches, only: [:create, :edit, :update, :new, :destroy]
  get 'people', to: "collaborators#index"
  resources :collaborators, only: [:create, :edit, :update, :new, :destroy]
  get 'publications', to: "publications#index"
  resources :publications, only: [:create, :edit, :update, :new, :destroy]
  get 'news', to: "stories#index"
  resources :stories, only: [:create, :edit, :update, :new, :destroy]
  resources :pictures, only: [:edit, :update]
  get 'join', to: "researches#index_join"
  get 'contact', to: "labs#index"
  resources :labs, only: [:create, :edit, :update, :new, :destroy]
end
