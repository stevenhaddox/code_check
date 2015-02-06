require 'lotus/model'

class Result
  include Lotus::Entity
  attributes :namespace, :project, :file, :infractions, :file_contents
end
