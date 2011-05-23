require 'hashie'
require 'httparty'

module Cheqin
  extend self
  attr_accessor :account, :auth_token, :secure

  class CheqinError < StandardError; end

  def configure(options={})
    @account = options[:account] if options.has_key?(:account)
    @auth_token = options[:auth_token] if options.has_key?(:auth_token)
    @secure = options[:secure] if options.has_key?(:secure)
  end

  def account_path
    "#{protocol}://api.cheqin.net"
  end

  def protocol
    secure ? "https" : "http"
  end

end

require 'cheqin-api/core_extensions'
require 'cheqin-api/client'
require 'cheqin-api/error'
require 'cheqin-api/notice'
require 'cheqin-api/project'