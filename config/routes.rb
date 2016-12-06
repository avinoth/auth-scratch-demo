Rails.application.routes.draw do

  resources :users, only: :create do
    collection do
      post 'confirm'
      post 'login'
    end
  end

  post 'password/forgot', to: 'password#forgot'
  post 'password/reset', to: 'password#reset'
  put 'password/update', to: 'password#update'

end
