module Cheqin
  class Booking < Cheqin::Base
      
      def self.find_all(*args)
        setup
        options = args.extract_options!
        results = fetch(collection_path, options)
        raise CheqinError.new(results.errors.error) if results.errors
        results.bookings
      end
      
      def self.find(id , *args)
        setup
        options = args.extract_options!
        results = fetch(find_path(id), options)
        raise CheqinError.new(results.errors.error) if results.errors
        results.booking
      end
      
      def self.collection_path
        '/bookings.xml'
      end
      
      def self.find_path(id)
          "/bookings/#{id}.xml"
      end
  end
end