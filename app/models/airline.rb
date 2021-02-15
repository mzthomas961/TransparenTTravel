class Airline < ApplicationRecord
    has_many :vacations 
    has_many :hotels, through: :vacations
    has_many :clients, through: :vacations
end
