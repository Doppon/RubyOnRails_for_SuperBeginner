Rails.application.routes.draw do
  # 読書カードアプリ用
  get 'cards/index'
  get 'cards', to: 'cards#index'

  get 'cards/add'
  post 'cards/add'

  get 'cards/:id', to: 'cards#show'

  get 'cards/edit/:id', to: 'cards#edit'
  patch 'cards/edit/:id', to: 'cards#edit'

  get 'cards/delete/:id', to: 'cards#delete'

  # CRUD機能が実装されたPeople用
  get 'people/index'
  get 'people', to: 'people#index'

  get 'people/add'
  post 'people/add', to: 'people#add'

  get 'people/edit/:id', to: 'people#edit'
  patch 'people/edit/:id', to: 'people#update'

  get 'people/delete/:id', to: 'people#delete'

  get 'people/:id', to: 'people#show'

  # 伝言板用
  get 'dengonban/index'
  get 'dengonban', to: 'dengonban#index'

  post 'dengonban/index'
  post 'dengonban', to: 'dengonban#index'

  # サンプルのhelo用
  get 'helo/index'
  get 'helo', to: 'helo#index'

  post 'helo/index'
  post 'helo', to: 'helo#index'

end
