Politreview::Application.routes.draw do

  root 'home#index'
  devise_for :users, :controllers => {:registrations => "registrations"}
  resources :news do
  	resources :reviews do
  		resources :comments
  	end
	end
  resources :politics do
  	resources :feedbacks do
  		resources :comments
  	end
  end
  resources :users
end
