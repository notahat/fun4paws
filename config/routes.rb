ActionController::Routing::Routes.draw do |map|
  map.resources :volunteers, :collection => { :map => :get, :search => :get }
  map.resources :home
  map.connect '/admin', :controller => 'volunteers'
  map.connect '/search', :controller => 'volunteers', :action => 'search'
  
  map.root :controller => "home"
end
