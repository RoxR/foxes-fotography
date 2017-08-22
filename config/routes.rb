Rails.application.routes.draw do
  devise_for :users
  
  root to: 'home#index'

  devise_scope :user do
    get 'admin', to: 'admin#index'

    match 'admin/new_model', to: 'admin#new_model', via: :get
    match 'admin/model_applicants', to: 'admin#model_applicants', via: :get
    match 'admin/confirm_model', to: 'admin#confirm_model', via: :put, as: :admin_confirm_model
    match 'admin/new_photographer', to: 'admin#new_photographer', via: :get
    match 'admin/model/create', to: 'admin#create_model', via: :create
    match 'admin/photographer/create', to: 'admin#create_photographer', via: :create
  end

  match 'submitted', to: 'become_a_model#submitted', via: :get
  get 'women', to: 'women#index'
  get 'men', to: 'men#index'
  get 'new_talent', to: 'new_talent#index'
  get 'photographers', to: 'photographers#index'
  get 'contact', to: 'contact#index'
  match 'contact', to: 'contact#create', via: :post, as: :contact_create
  get 'our_story', to: 'our_story#index'
  get 'become_a_model', to: 'become_a_model#index'
  match 'become_a_model', to: 'become_a_model#create', via: :post, as: :become_a_model_create

  authenticate :user do 
    get 'model_edit/:id', to: 'admin#edit_model', as: 'model_edit'
    match 'model_update/:id', to: 'admin#update_model', as: 'model_update', via: :patch
    match 'model_delete/:id', to: 'admin#destroy_model', as: 'model_delete', via: :delete
  end

  resources :models, only: [:show]
end
