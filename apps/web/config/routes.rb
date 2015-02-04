# Configure your routes here
# See: http://www.rubydoc.info/gems/lotus-router/#Usage
#
#
#
# This route will look for `Web::Controllers::Home::Index` action in `apps/web/controllers/home/index.rb`.
# Please, uncomment the following line to have a working example.
get '/', to: 'home#index'
get '/recent', to: 'home#recent'
get '/all', to: 'home#all'

namespace 'gitlab' do
  get '/', to: 'gitlab#index'
  get '/:namespace', to: 'gitlab#namespace'
  get '/:namespace/:name', to: 'gitlab#name'
  get '/:namespace/:name/:result', to: 'gitlab#result'
  post '/', to: 'gitlab#queue'
end