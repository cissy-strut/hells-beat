Rails.application.routes.draw do
  get 'matchings/index'
  get 'matchings/refuse'
  get 'matchings/accept'
  get 'matchings/show'
  devise_for :users
  root to: "pages#home"

  resources :matchings, only: %i[index show] do
    member do
      patch 'accept'
      patch 'refuse'
    end
  end

  resources :chatrooms, only: %i[show create index] do
    resources :messages, only: :create
  end
end
