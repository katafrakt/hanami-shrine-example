require 'rubygems'
require 'bundler/setup'
require 'hanami/setup'
require_relative '../lib/hanami-shrine'
require_relative '../apps/web/application'

Hanami.configure do
  mount Web::Application, at: '/'

  model do
    adapter :sql, ENV['LOTUS_SHRINE_DATABASE_URL']
  end
end
