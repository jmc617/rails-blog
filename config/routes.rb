Rails.application.routes.draw do
  # get 'comment/new'
  # get 'comment/:id/edit' => 'comment#edit'
  # get 'comment/show'
  get 'blogs/:id/profile'=> 'blogs#profile'
  get 'blogs/:id/comment' => "blogs#comment"
  # get 'destroy' => 'blogs#destroy'
  devise_for :users, :controllers => { registrations: 'registrations' }
  root 'blogs#index'
  # resources :blogs
  # resources :comments
  resources :blogs do
    resources :comments
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
