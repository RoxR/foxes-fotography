Rails.application.routes.draw do
  devise_for :users
  
  root to: 'home#index'

  devise_scope :user do
    get 'admin', to: 'admin#index'
  end

  get 'women', to: 'women#index'
  get 'men', to: 'men#index'
  get 'new_talent', to: 'new_talent#index'
  get 'photographers', to: 'photographers#index'
  get 'contact', to: 'contact#index'
  get 'our_story', to: 'our_story#index'
  get 'become_a_model', to: 'become_a_model#index'
end
