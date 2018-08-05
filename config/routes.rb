Rails.application.routes.draw do

  # devise_for :borrowers
  # devise_for :lenders

  root 'pages#home'

  get 'pages/login'
  get 'pages/register'

  get '/dashboard', to: 'pages#home'

  get 'pages/borrower_dash'
  get 'pages/lender_dash'


  get 'pages/borrower_step_2'
  get 'pages/lender_step_2'

  # devise_for :lenders, controllers: { registrations: "registrations" }
  devise_for :lenders
  devise_for :borrowers, controllers: { registrations: "registrations" }
  # devise_for :borrowers, controllers: { borrowers: "borrowers" }

  resources :borrowers do
    resources :notes, module: :borrowers#, only: [:index, :new, :create]
  end
  # resources :notes, only: [:show, :edit, :update, :destroy]

  resources :lenders do
    resources :notes, module: :lenders#, only: [:index, :new, :create]
  end
  # resources :notes, only: [:show, :edit, :update, :destroy]


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
