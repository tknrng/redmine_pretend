# Plugin's routes
# See: http://guides.rubyonrails.org/routing.html

resources :users, only: [] do
  post :pretend_to, on: :member
  post :unpretend, on: :collection
end
