Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  #root to: 'articles#index'
  get 'index', to: "tasks#index"

  resources :tasks, only: [:index, :show, :new, :create, :edit, :update, :destroy]
  #delete "restaurants/:id", to: "restaurants#destroy"

  #post 'tasks', to: 'tasks#create'
end
