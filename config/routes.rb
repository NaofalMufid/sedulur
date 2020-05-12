Rails.application.routes.draw do
  get 'follows/create'
  get 'follows/destroy'
  get 'comments/create'
  get 'comments/destroy'
  get 'comments/find_commentable'
  resources :posts
  devise_for :users
  get 'home/front'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
