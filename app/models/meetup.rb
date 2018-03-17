class Meetup < ApplicationRecord
  has_one :location
  has_many :speakers
  has_many :reports, through: :speakers
end
