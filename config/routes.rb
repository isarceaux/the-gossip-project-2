Rails.application.routes.draw do
  
  resources :gossips
  root 'gossips#index'
  devise_for :corsaires
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
