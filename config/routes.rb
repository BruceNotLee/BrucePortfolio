Rails.application.routes.draw do

  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register' }
  
  namespace :admin do
    get 'dashboard/main'
    get 'dashboard/users'
    get 'dashboard/posts'
  end

  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  get 'privacy', to: 'pages#privacy'

  resources :blogs do
    member do
      get :toggle_status
    end
  end

  resources :portfolios, except: [:show]
  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'

   get 'portfolios/:id', to: 'portfolios#toggle_status', as: 'toggle_status_portfolio' do
     get :toggle_status
   end

   get 'search/:keyword', to: 'pages#search'
   get 'search/:keyword/:keyword1', to: 'pages#search'
   get 'search/:keyword/:keyword1/:keyword2', to: 'pages#search'

   root to: 'pages#home'
end
