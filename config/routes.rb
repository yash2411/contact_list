Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :contacts
  get 'contact_list', to: 'contacts#contact_list'
  root "contacts#index"
end
