require 'hanami/model'
require 'hanami/shrine'
Dir["#{ __dir__ }/hanami-shrine/**/*.rb"].each { |file| require_relative file }

Hanami::Model.configure do
  ##
  # Database adapter
  #
  # Available options:
  #
  #  * Memory adapter
  #    adapter type: :memory, uri: 'memory://localhost/hanami-shrine_development'
  #
  #  * SQL adapter
  #    adapter type: :sql, uri: 'sqlite://db/hanami-shrine_development.sqlite3'
  #    adapter type: :sql, uri: 'postgres://localhost/hanami-shrine_development'
  #    adapter type: :sql, uri: 'mysql://localhost/hanami-shrine_development'
  #
  adapter type: :sql, uri: ENV['LOTUS_SHRINE_DATABASE_URL']

  ##
  # Database mapping
  #
  # Intended for specifying application wide mappings.
  #
  # You can specify mapping file to load with:
  #
  # mapping "#{__dir__}/config/mapping"
  #
  # Alternatively, you can use a block syntax like the following:
  #
  mapping do
    collection :images do
      entity Image
      repository ImageRepository

      attribute :id,          Integer
      attribute :title,       String
      attribute :image_data,  String
    end

    # collection :users do
    #   entity     User
    #   repository UserRepository
    #
    #   attribute :id,   Integer
    #   attribute :name, String
    # end
  end
end.load!
