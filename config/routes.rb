Rails.application.routes.draw do
  devise_for :users
  root 'carpenters#index'
  get '/goods', to: 'goods#index' # excellent!
  resources :carpenters do
    resources :goods

  post 'goods/:id/favorite' => 'goods#favorite'  
  # check out shallow nesting as a way to DRY up your routes - http://edgeguides.rubyonrails.org/routing.html#shallow-nesting
  end
end
