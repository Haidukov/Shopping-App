Rails.application.routes.draw do
  get 'login', to: 'auth#login_view'
  post 'login', to: 'auth#login_action'
  get 'logout', to: 'auth#logout'
  post 'rate', to: 'shopping_items#rate'
  root 'shopping_items#index'
end
