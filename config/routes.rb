Politreview::Application.routes.draw do

  root 'home#index'
  devise_for :users, :controllers => {:registrations => "registrations"}
  resources :news do
  	resources :reviews do
      member do
        post :vote_up
        post :vote_down
      end
  		resources :comments
  	end
	end
  resources :politics do
    member do
      post :stars
    end
  	resources :feedbacks do
      member do
        post :vote_up
        post :vote_down
      end
  		resources :comments
  	end
  end
  resources :users
end
