
Rails.application.routes.draw do
  get 'welcome/index'


  resources :articles do
    resources :budgets
  end

  root 'welcome#index'
end