module Cheqin
  class Theme < Cheqin::Base
      
      def self.update(options)
        setup
        Theme.put(collection_path, options)
      end
      
      def self.collection_path
        '/themes.xml'
      end
      
      def self.find_individual(args)
        id = args.shift
        options = args.extract_options!
        fetch(theme_path(id), options)
      end

      def self.theme_path(theme_id)
        "/themes/#{theme_id}.xml"
      end
  end
end