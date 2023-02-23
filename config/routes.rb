Rails.application.routes.draw do
  resources :lists, only: %i[index show create new] do
    resources :bookmarks, only: %i[create new]
  end
  resources :bookmarks, only: %i[destroy]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
