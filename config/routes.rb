Rails.application.routes.draw do
  devise_for :users, except: :new_user_registration
  root to: 'pages#home', as: :home
  get 'thoughts', to: 'thoughts#index', as: :thoughts
  get 'projects', to: 'projects#index', as: :projects
  get 'book-recs', to: 'bookrecs#index', as: :book_recs
  get 'admin', to: 'pages#admin', as: :admin
  get 'admin/thoughts', to: 'thoughts#dash', as: :admin_thoughts
  get 'admin/projects', to: 'projects#dash', as: :admin_projects
  get 'admin/books', to: 'books#dash', as: :admin_books
  resources :projects, except: [ :new ]
  resources :thoughts, except: [ :new ]
  resources :books, except: [ :new ]
end
