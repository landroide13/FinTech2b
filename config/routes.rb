Rails.application.routes.draw do
  devise_for :users, :controllers => {:registrations => 'user/registrations'}
  #get 'welcome/index'

  root 'welcome#index'
  get 'my_portfolio' => 'users#my_portfolio'
  get 'search_stocks' => 'stocks#search'

  resources :user_stocks, only:[:create, :destroy]
  resources :users, only:[:show] 
  resources :friendships

  get 'my_friends' => 'users#my_friends'
  get 'search_friends' => 'users#search'
  post 'add_friend' => 'users#add_friend'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
