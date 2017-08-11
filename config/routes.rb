Rails.application.routes.draw do
  resources :disciplines
  resources :posts
  resources :jobs
  resources :arts
  # use custom registrations controller
  devise_for :users, :controllers => { :registrations => :registrations }
  resources :users do
    post :follow, to: 'followers#create'
    delete :unfollow, to: 'followers#destroy'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'static#home'
  get '/following' => 'static#following', as: :following
  get '/:username' => 'static#profile', as: :profile
end
