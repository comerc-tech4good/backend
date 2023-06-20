Rails.application.routes.draw do
  # test route
  get '/api/test', to: 'shops#test', as: 'testing'

  # page-load GETs
  get 'api/pageload', to: 'districts#index'
    # returns: list of all activities and filtering options

  # form GET that will have params
  post 'api/top_matches', to: 'districts#index'
    # returns best X=3 districts for each filter
end
