SIBMt::Application.routes.draw do
  
  root :to => 'profiles#index'

  resources :profiles, :only => [:index, :show]

  resources :units, :only => [:index, :show]

end
