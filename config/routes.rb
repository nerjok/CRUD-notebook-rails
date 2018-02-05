Rails.application.routes.draw do
  get 'transport/index'

  get 'welcome/index'

  resources :transports do
    get :custom, on: :collection
  end
  resources :articles
  
  #root 'welcome#index'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
