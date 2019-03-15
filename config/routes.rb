# Plugin's routes
# See: http://guides.rubyonrails.org/routing.html

resources :pretend, only: :update do
  post :restore, on: :collection
end
