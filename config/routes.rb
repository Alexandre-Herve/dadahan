Dadahan::Application.routes.draw do
  resources :projects

  resources :customers

  get "home/index"
end
