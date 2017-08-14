Rails.application.routes.draw do
  resources :disciplines
  resources :posts
  resources :jobs
  resources :arts
  # resources :contacts, only: [:new, :create]
  # post 'contacts', to: 'contacts#create', as: :contact
  post '/contact' => 'contacts#new'
  resources :contacts, only: [:new, :create]

  # use custom registrations controller
  devise_for :users, :controllers => { :registrations => :registrations }
  resources :users do
    post :follow, to: 'followers#create'
    delete :unfollow, to: 'followers#destroy'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'static#home'
  get '/explore' => 'static#explore'
  get '/following' => 'static#following', as: :following
  get '/:username' => 'static#profile', as: :profile
end
