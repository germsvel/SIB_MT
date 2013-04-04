SIBMt::Application.routes.draw do
  
  root :to => 'profiles#index'

  resources :profiles, :only => [:index, :show]

end
