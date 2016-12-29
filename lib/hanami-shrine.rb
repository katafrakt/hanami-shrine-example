require 'hanami/model'
require 'hanami/shrine'
Dir["#{ __dir__ }/hanami-shrine/**/*.rb"].each { |file| require_relative file }
