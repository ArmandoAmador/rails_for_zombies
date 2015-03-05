Rails.application.routes.draw do
  resources :brains

  resources :zombies
  resources :rotting_zombies
end
