Politreview::Application.routes.draw do

  root 'home#index'
  devise_for :users, :controllers => {:registrations => "registrations"}
  resources :news do
  	resources :reviews do
  		resources :comments
  	end
	end
  resources :politics
  resources :users
end
