Rails.application.routes.draw do
  resources :pemenangs
  resources :hasil_lelelangs
  resources :penawarans
  resources :lelangs
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :barangs
   devise_for :users, controllers: { sessions: 'users/sessions', registrations: 'users/registrations' }
  devise_scope :user do
    get 'sign_in', to: 'devise/sessions#new'
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  resources :homes
  root to: 'homes#index'
end
