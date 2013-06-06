Emailup::Application.routes.draw do
  root :to => 'users#index'
  resource :user
end
