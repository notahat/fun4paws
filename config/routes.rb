ActionController::Routing::Routes.draw do |map|
  map.resources :volunteers

  map.root :controller => "volunteers"
end
