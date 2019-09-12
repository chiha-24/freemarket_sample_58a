Rails.application.routes.draw do
  get 'users/show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources 'products'
  root 'products#new'
  get 'signup/signup' => 'signup#signup'
  get 'signup/signin' => 'signup#signin'
  get 'signup/1' => 'signup#first'
  get 'signup/2' => 'signup#second'
  get 'signup/3' => 'signup#third'
  get 'signup/4' => 'signup#fourth'
  get 'signup/5' => 'signup#fifth'
end
