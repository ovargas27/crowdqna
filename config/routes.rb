ActionController::Routing::Routes.draw do |map|
  map.root :controller => :answers
  
  map.resources :questions, :only => [:new, :create, :show]
  map.resources :answers, :only => :index
  
  map.namespace :admin do |admin|
    admin.resources :questions, :has_one => :answer
  end
  map.resource :fail, :only => :show, :controller => :fail
  map.admin_index 'admin', :controller => 'admin/questions', :action => 'index'
end
