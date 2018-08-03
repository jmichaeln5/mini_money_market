Rails.application.routes.draw do

  root 'pages#home'

  get 'pages/login'
  get 'pages/register'

  get 'pages/borrower_dash'
  get 'pages/lender_dash'

  get 'pages/borrower_step_2'
  get 'pages/lender_step_2'

  # devise_for :borrowers
  # devise_for :lenders

  devise_for :borrowers
  devise_for :lenders


  resources :borrowers do
    resources :notes, module: :borrowers
  end
  resources :lenders   do
    resources :notes, module: :lenders
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
