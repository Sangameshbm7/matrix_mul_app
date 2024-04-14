Rails.application.routes.draw do
  get 'matrices/multiply'
  get 'matrices/generate_matrices', to: 'matrices#generate_matrices', as: 'generate_matrices'
  root to: "home#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
