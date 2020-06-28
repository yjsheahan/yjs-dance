Rails.application.routes.draw do
# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'portfolio', to: 'pages#portfolio', as: :portfolio
  get 'contact', to: 'pages#contact', as: :contact

  root to: 'pages#home'

  resources :contacts, only: [:new, :create]
    get 'contacts/new'
    get 'contacts/create'
end
