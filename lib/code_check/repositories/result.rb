require 'lotus/model'

class ResultRepository
  include Lotus::Repository

  def self.find_by_name(name)
    query.where(result_name: name)
  end
end

