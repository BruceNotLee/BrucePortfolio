Rails.application.routes.draw do

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

   get 'search/:search', to: 'pages#search'

   root to: 'pages#home'
end
