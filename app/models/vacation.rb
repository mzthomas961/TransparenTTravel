class Vacation < ApplicationRecord
  belongs_to :airline
  belongs_to :client
  belongs_to :hotel

  def total_price
    self.hotel_price + self.airline_price
  end
end
