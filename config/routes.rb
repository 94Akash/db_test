Rails.application.routes.draw do
  root 'pages#home'
  resources :tests, only: [:show, :index, :new, :create, :edit, :update, :destroy]
 

end
