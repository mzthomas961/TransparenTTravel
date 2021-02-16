class Client < ApplicationRecord
  belongs_to :agent
  has_many :vacations, dependent: :destroy
  has_many :hotels, through: :vacations
  has_many :airlines, through: :vacations

  def is_senior
    if self.age >= 65
      return true
    end
  end

  def premiere_customer
    if self.vacations.size >= 5
      "*This client is a premiere customer*"
    end
  end
end
 