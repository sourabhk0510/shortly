Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#home'
  resources :links, only: [ :create] do 
    collection do 
      get :top
    end
  end
  match ':in_url', to: 'links#go', via: [:get]
end
