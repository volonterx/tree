Tree::Application.routes.draw do
  
  resources :elements
  
  root :to => 'elements#index'
end
