Rails.application.routes.draw do
  root 'air_quality_measurements#index'

  resources :air_quality_measurements, only: [:index]
end
