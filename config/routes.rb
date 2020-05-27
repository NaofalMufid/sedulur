Rails.application.routes.draw do
  get 'users/show'
  get 'users/edit'
  get 'users/update'
  get 'users/deactivr'
  get 'users/friends'
  get 'users/followers'
  get 'users/mentionable'
  get 'users/user_params'
  get 'users/check_ownership'
  get 'users/set_user'
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
