Rails.application.routes.draw do
  get 'about' => 'welcome#about'

  root 'users#show'

  devise_for :users

  resources :users, only: [:show]

end
