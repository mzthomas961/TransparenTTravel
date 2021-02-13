class Vacation < ApplicationRecord
  belongs_to :airline
  belongs_to :client
  belongs_to :hotel
end
