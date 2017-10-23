Rails.application.routes.draw do
  get 'static_pages/about'

  root 'notes#index'
  resources :notes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
