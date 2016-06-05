Rails.application.routes.draw do
  resources :categories
  devise_for :users, controllers: {omniauth_callbacks: "omniauth_callbacks"}
  resources :articles do
  	member do
  		get "like", to: "articles#upvote"
  		get "dislike",to: "articles#downvote"
  	end
  	resources :comments
  end
  get '/acerca', to: "acerca#de"
  get 'privacidad', to: "acerca#privacidad"
  root 'articles#index'
end
