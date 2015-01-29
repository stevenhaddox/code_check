require 'lotus/model'
Dir["#{ __dir__ }/**/*.rb"].each { |file| require_relative file }

Lotus::Model.configure do
  # Database adapter
  #
  # Available options:
  #
  #  * Memory adapter
  #    adapter type: :memory, uri: 'memory://localhost/code_check_development'
  #
  #  * SQL adapter
  #    adapter type: :sql, uri: 'sqlite://db/code_check_development.db'
  #    adapter type: :sql, uri: 'postgres://localhost/code_check_development'
  #    adapter type: :sql, uri: 'mysql://localhost/code_check_development'
  #
  adapter type: :file_system, uri: ENV['CODE_CHECK_DATABASE_URL']

  ##
  # Database mapping
  #
  mapping do
    # collection :users do
    #   entity     User
    #   repository UserRepository
    #
    #   attribute :id,   Integer
    #   attribute :name, String
    # end
  end
end.load!
