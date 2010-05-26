ActionController::Routing::Routes.draw do |map|
  map.root :controller => :answers
  
  map.resources :questions, :only => [:new, :create, :show]
  map.resources :answers, :only => :index
  
  map.namespace :admin do |admin|
    admin.resources :questions, :has_one => :answer
  end
end
