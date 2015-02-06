require 'lotus/model'

class ProjectRepository
  include Lotus::Repository

  #find a specific project by its identifiers
  def self.find_by_name(namespace, name)
    query.where(project_namespace: namsepace, project_name: name)
  end

  #find the most recently updated projects
  def self.find_most_recent()
    query.order(:last_run).limit(10)
  end

end