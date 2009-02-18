ActionController::Routing::Routes.draw do |map|
  map.resources :volunteers, :collection => { :map => :get }
  map.resources :home

  map.root :controller => "home"
end
