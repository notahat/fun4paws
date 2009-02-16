ActionController::Routing::Routes.draw do |map|
  map.resources :volunteers
  map.resources :home

  map.root :controller => "home"
end
