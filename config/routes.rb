Rails.application.routes.draw do
  resources :songs
  # get 'song/index'

  # get 'song/show'

  # get 'song/new'

  # get 'song/create'

  # get 'song/edit'

  # get 'song/update'

  # get 'genre/index'

  # get 'genre/show'

  # get 'genre/new'

  # get 'genre/create'

  # get 'genre/edit'

  # get 'genre/update'
  resources :genres

  # get 'artist/index'

  # get 'artist/show'

  # get 'artist/new'

  # get 'artist/create'

  # get 'artist/edit'

  # get 'artist/update'
  resources :artists

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
