class Passenger < ApplicationRecord
  belongs_to :booking, optional: true

  validates :name, presence: true, length: { minimum: 3 }
end
