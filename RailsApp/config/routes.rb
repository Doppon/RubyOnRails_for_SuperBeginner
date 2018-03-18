Rails.application.routes.draw do
  get 'dengonban/index'

  get 'helo/index'
  get 'helo', to: 'helo#index'

  post 'helo', to: 'helo#index'
  post 'helo/index'
end
