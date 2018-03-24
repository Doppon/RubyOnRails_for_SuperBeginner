Rails.application.routes.draw do
  get 'people/index'

  get 'dengonban/index'
  get 'dengonban', to: 'dengonban#index'

  post 'dengonban/index'
  post 'dengonban', to: 'dengonban#index'

  get 'helo/index'
  get 'helo', to: 'helo#index'

  post 'helo', to: 'helo#index'
  post 'helo/index'
end
