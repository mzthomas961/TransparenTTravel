class Hotel < ApplicationRecord
    has_many :vacations
    has_many :clients, through: :vacations
    has_many :airlines, through: :vacations

end
