SocialLinks::Engine.routes.draw do
  resources :social_modules, path: "social_module", only: [:index, :edit, :udate, :destroy]
  root to: 'social_modules#index'
end
