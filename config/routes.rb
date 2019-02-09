Rails.application.routes.draw do

  devise_for :users
  root 'speakers#index'

  resources :sponsors do 
  	resources :comments
  end

  resources :speakers do
  	resources :comments
  end

end
