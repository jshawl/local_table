Rails.application.routes.draw do
  devise_for :users
  root 'carpenters#index'
  get '/goods', to: 'goods#index'
  resources :carpenters do
    resources :goods

  post 'goods/:id/favorite' => 'goods#favorite'  
  end
end
