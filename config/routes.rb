SIBMt::Application.routes.draw do
  

  root :to => 'profiles#show', :id => '1'


  match '/cmo' => 'profiles#show', :id => '1' 
  match '/ss'  => 'profiles#show', :id => '2' 
  match '/ca'  => 'profiles#show', :id => '3' 

  resources :profiles,           :only => [:show, :edit, :update] do
    resources :platform_stories,  :only => [:new, :create, :edit, :update]
    resources :market_data,       :only => [:edit, :update]
    resources :case_studies,      :only => [:new, :create, :edit, :update]
  end

  resources :faqs,              :only => [:new, :create, :edit, :update, :destroy]
  resources :faq_answers,       :only => [:destroy]
  
  
  resources :units,             :only => [:index, :show, :new, :create, :destroy]
  resources :misc_resources,    :only => [:new, :create, :destroy]

end
