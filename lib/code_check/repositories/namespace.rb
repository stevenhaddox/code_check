require 'lotus/model'

class NamespaceRepository
  include Lotus::Repository

  def self.find_by_name(name)
    query.where(namespace_name: name)
  end
end