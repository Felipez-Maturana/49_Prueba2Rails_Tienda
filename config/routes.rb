Rails.application.routes.draw do
  get 'productos/index'
  root 'productos#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
