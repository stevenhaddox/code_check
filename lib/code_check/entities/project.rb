require 'lotus/model'

class Project
  include Lotus::Entity
  attributes :namespace, :name, :infraction_files, :last_run
end
