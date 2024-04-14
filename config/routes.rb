Rails.application.routes.draw do
  get 'matrices/multiply'
  post 'matrices/matrix_multiplication', to: 'matrices#matrix_multiplication'
  root to: "home#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
