Rails.application.routes.draw do
  resources :disciplines
  resources :posts
  resources :jobs
  resources :arts
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'static#home'
  get '/:username' => 'static#profile', as: :profile
end
