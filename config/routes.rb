Emailup::Application.routes.draw do
  root :to => 'users#index'
  resource :user,  :only => [:index, :new, :create]
  resource :email, :only => [:new, :create]
end
