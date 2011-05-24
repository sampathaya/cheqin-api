module Cheqin
  class Transaction < Cheqin::Base
      def self.add_booking(booking)
          booking.save
          booking
      end
  end
end