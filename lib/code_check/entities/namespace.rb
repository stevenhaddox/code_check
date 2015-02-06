require 'lotus/model'

class Namespace
  include Lotus::Entity
  attributes :name, :projects
end
