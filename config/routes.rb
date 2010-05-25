ActionController::Routing::Routes.draw do |map|
  map.root :controller => :answers
  
  map.resources :questions
  map.resources :answers
  
  map.namespace :admin do |admin|
    admin.resources :questions, :has_one => :answer
  end
end
