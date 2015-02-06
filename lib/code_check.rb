require 'pg'
require 'lotus/model'
require 'lotus/model/adapters/sql_adapter'

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

  adapter type: :sql, uri: ENV['CODE_CHECK_DATABASE_URL']
  ##
  # Database mapping
  # I am going to fake this out in the controller for now, but we need to implement this :)

  mapping do
    collection :namespaces do
      entity Namespace
      attribute :name, String
      attribute :projects, Array
    end
    collection :projects do
      entity Project
      attribute :namespace, String
      attribute :name, String
      attribute :infractions, Array
      attribute :last_run, DateTime
    end
    collection :results do
      entity Result
      attribute :namespace, String
      attribute :file, String
      attribute :infractions, Array
      attribute :file_contents, String
    end
  end
end.load!
