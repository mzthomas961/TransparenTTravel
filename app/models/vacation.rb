
class Vacation < ApplicationRecord
  belongs_to :airline
  belongs_to :client
  belongs_to :hotel

  def total_price
    self.hotel_price + self.airline_price
  end

  def discount
    # hotel_discount= self.hotel_price* 0.9
    # airline_discount= self.airline_price *0.9
    if self.client.is_senior
      self.hotel_price = self.hotel_price * 0.9
      self.airline_price= self.airline_price * 0.9
      return true
    end
  end

  
end