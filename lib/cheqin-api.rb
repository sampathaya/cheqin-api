require 'hashie'
require 'httparty'

module Cheqin
  extend self
  attr_accessor :auth_token, :secure

  class CheqinError < StandardError; end

  def configure(options={})
    @url = options[:url] if options.has_key?(:url)
    @auth_token = options[:auth_token] if options.has_key?(:auth_token)
    @secure = options[:secure] if options.has_key?(:secure)
  end

  def account_path
    "#{protocol}://api.lvh.me:3001"
  end

  def protocol
    secure ? "https" : "http"
  end

end

require 'cheqin-api/core_extensions'
require 'cheqin-api/client'
require 'cheqin-api/billed_item'
require 'cheqin-api/theme'
require 'cheqin-api/hotel'
require 'cheqin-api/booking'
require 'cheqin-api/customer'
require 'cheqin-api/payment'
require 'cheqin-api/transaction'