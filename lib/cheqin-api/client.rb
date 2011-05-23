module Cheqin
  class Base 
    include HTTParty
    format :xml

    private

    def self.setup
      base_uri Cheqin.account_path
      default_params :auth_token => Cheqin.auth_token

      check_configuration
    end

    def self.check_configuration
      raise CheqinError.new('API Token cannot be nil') if default_options.nil? || default_options[:default_params].nil? || !default_options[:default_params].has_key?(:auth_token)
     # raise CheqinError.new('Account cannot be nil') unless default_options.has_key?(:base_uri)
    end

    def self.fetch(path, options)
        options = apply_auth_token(options)
        puts path.inspect + '+++++++++++++++++++++++' + options.inspect
      response = get(path, { :query => options })
      if response.code == 403
        raise HoptoadError.new('SSL should be enabled - use Hoptoad.secure = true in configuration')
      end

      Hashie::Mash.new(response)
    end
    
    def self.apply_auth_token(options)
          options[:auth_token]  = Cheqin.auth_token
    end

  end
end