Rails.application.routes.draw do
  scope "/api", defaults: {format: :json} do
    resources :accountings, only: [:index, :show]
    resources :companies, only: [:index, :show]
    resources :customers, only: [:index, :show]
    resources :invoices, only: [:index, :show]
    resources :users, only: [:index, :show]
  end
end
