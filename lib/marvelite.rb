require 'active_model'
require 'digest'
require 'httparty'
require 'hashie'

require "marvelite/version"
require "marvelite/api/router"
require "marvelite/api/character_methods"
require "marvelite/api/comic_methods"
require "marvelite/api/event_methods"
require "marvelite/api/client"
require "marvelite/api/response"

module Marvelite
  def self.router(attrs = {})
    Marvelite::API::Router.new(attrs)
  end
end