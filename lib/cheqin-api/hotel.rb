module Cheqin
  class Hotel < Cheqin::Base

    def self.find(id , *args)
      setup
      options = args.extract_options!
      results = fetch(find_path(id), options)
      raise CheqinError.new(results.errors.error) if results.errors
      results.hotel
    end
    
    def self.get_hotel_images(id)
        setup
        results = fetch(hotel_image_path , :id=>id )
        results.images
    end
    


    def self.collection_path
      '/hotels.xml'
    end
    
    def self.find_path(id)
        "/hotels/#{id}.xml"
    end
    
    def self.hotel_image_path
        '/hotels/get_hotel_images.xml'
    end

  end
end