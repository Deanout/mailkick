Rails.application.routes.draw do
  # Option 1
  post 'newsletter/subscribe', to: 'newsletter#subscribe', as: 'newsletter_subscribe'
  delete 'newsletter/unsubscribe', to: 'newsletter#unsubscribe', as: 'newsletter_unsubscribe'
  # Option 2
  post 'newsletter/manage', to: 'newsletter#manage', as: 'newsletter_manage'

    # Email newsletter users with the path: email_blast_path
    post 'newsletter/email', to: 'newsletter#email', as: 'email_blast'

  # Other stuff
  root 'pages#home'
  get 'pages/home'
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
