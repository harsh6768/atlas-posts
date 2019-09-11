Rails.application.routes.draw do
  
  #for setting the index page
  root 'posts#index', as: 'home'

  #for regular routes
  get 'about' => 'pages#about', as: 'about'

  #resource route to map all the http request to controller
  resources :posts do
    resources:comments
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
