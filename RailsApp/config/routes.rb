Rails.application.routes.draw do
  get 'cards/index'
  get 'cards', to: 'cards#index'

  get 'cards/show'

  get 'cards/add'
  post 'cards/add'

  get 'cards/edit'

  #CRUD機能が実装されたPeopleルーティング
  get 'people/index'
  get 'people', to: 'people#index'

  get 'people/add'
  post 'people/add', to: 'people#add'

  get 'people/edit/:id', to: 'people#edit'
  patch 'people/edit/:id', to: 'people#update'

  get 'people/delete/:id', to: 'people#delete'

  get 'people/:id', to: 'people#show'

  #伝言板用のルーティング
  get 'dengonban/index'
  get 'dengonban', to: 'dengonban#index'

  post 'dengonban/index'
  post 'dengonban', to: 'dengonban#index'

  #サンプルのhelo用のルーティング
  get 'helo/index'
  get 'helo', to: 'helo#index'

  post 'helo/index'
  post 'helo', to: 'helo#index'

end
