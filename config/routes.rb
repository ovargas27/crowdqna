ActionController::Routing::Routes.draw do |map|
  map.root :controller => :questions
  
  map.resources :questions
end
