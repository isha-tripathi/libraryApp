ActionController::Routing::Routes.draw do |map|
  map.resources :books
    map.resources :users

    map.root :controller => "home", :action=>"index"
    map.connect '/books/reserve',:controller=> "books", :action=> "reserve"

  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
