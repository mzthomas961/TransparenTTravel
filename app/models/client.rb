class Client < ApplicationRecord
  belongs_to :agent
  has_many :vacations
  has_many :hotels, through: :vacations
  has_many :airlines, through: :vacations
end