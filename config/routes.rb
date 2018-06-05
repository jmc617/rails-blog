Rails.application.routes.draw do
  # get 'blogs/index' => "blogs#index"
  # get 'blogs/new' => "blogs#new"
  # get 'blogs/edit' => "blogs#edit"
  get 'welcome/index' => "welcome#index"
  devise_for :users
  root 'welcome#index'
  resources :blogs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
