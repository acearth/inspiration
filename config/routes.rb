Rails.application.routes.draw do
  resources :tags
  root 'notes#index'

  get '/about', to: 'static_pages#about'

  resources :notes

  namespace :api do
    namespace :v1 do
      get 'all', to: 'notes#index'
      get 'last', to: 'notes#last'
      post 'notes', to: 'notes#create'
    end

    get 'hello', to: 'wechat#hello'
    get 'wechat_add', to: 'wechat#add_note'
  end


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
