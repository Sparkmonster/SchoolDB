Rails.application.routes.draw do
  resources :enrollments
  devise_for :users

  get 'welcome/index'
  get '/loginsuccess', to: 'welcome#loginsuccess', as: :loginsuccess

  resources :students do
    collection do
      get 'search'
    end
  end

  resources :sections do
    collection do
      get 'search'
    end
  end

  resources :courses do
    collection do
      get 'search'
    end
  end

  resources :professors do
    collection do
      get 'search'
    end
  end

  resources :enrollments do
    collection do
      get 'search'
    end
  end

  root to: 'welcome#index'

end
