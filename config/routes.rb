ActionController::Routing::Routes.draw do |map|
  map.root :controller => :answers
  
  map.resources :questions
  map.resources :answers
end
