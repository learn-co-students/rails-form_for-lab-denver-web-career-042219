Rails.application.routes.draw do
root 'students#index'
resources :students
resources :school_classes
end
