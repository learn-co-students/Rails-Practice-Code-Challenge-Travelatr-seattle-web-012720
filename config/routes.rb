Rails.application.routes.draw do
  resources :bloggers
  resources :posts
  resources :destinations

  patch '/posts/:id/like', to: 'posts#like'
end