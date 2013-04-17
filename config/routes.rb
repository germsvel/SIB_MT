SIBMt::Application.routes.draw do
  
  root :to => 'profiles#show', :id => '1'


  match '/cmo' => 'profiles#show', :id => '1' 
  match '/ss' => 'profiles#show', :id => '2' 
  match '/ca' => 'profiles#show', :id => '3' 

  resources :profiles, :only => [:show]

  resources :units, :only => [:index, :show, :new, :create, :destroy]

  resources :faqs, :only => [:index, :show, :new, :create, :destroy]

end
