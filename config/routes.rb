SocialLinks::Engine.routes.draw do
  resources :social_modules
  root to: 'social_modules#edit'
end
