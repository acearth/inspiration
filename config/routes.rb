Rails.application.routes.draw do
  resources :tags
  root 'notes#index'

  get '/about', to: 'static_pages#about'

  resources :notes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
