Rails.application.routes.draw do
  resources :courses
  root 'pages#index'
end
