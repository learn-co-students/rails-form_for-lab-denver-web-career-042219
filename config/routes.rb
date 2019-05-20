Rails.application.routes.draw do
root 'students#index'
resources :students do
  resources :school_classes
end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
