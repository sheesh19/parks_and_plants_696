Rails.application.routes.draw do
  resources :cities do
    resources :sites, only: [ :create ]
  end

  resources :sites, only: :destroy
end
