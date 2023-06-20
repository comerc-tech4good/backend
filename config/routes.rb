Rails.application.routes.draw do
  # test route
  get '/api/test', to: 'shops#test', as: 'testing'

  # page-load GETs
  get 'config', to: 'districts#index'
    # returns: list of all activities and filtering options

  # form GET that will have params
  post 'neighborhood', to: 'districts#top_matches'
    # returns best X=3 districts for each filter
end
