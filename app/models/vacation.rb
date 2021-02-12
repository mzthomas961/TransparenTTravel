class Vacation < ApplicationRecord
  belongs_to :hotel
  belongs_to :airline
  belongs_to :client
end
