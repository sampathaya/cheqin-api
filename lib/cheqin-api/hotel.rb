module Cheqin
  class Hotel < Cheqin::Base

    def self.find(*args)
      setup
      options = args.extract_options!
      results = fetch(collection_path, options)
      raise CheqinError.new(results.errors.error) if results.errors
      puts results.inspect 
    end

    def self.collection_path
      '/hotels.xml'
    end

  end
end