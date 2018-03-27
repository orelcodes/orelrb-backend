class Meetup < ApplicationRecord
  has_one :location
  has_many :reports
  has_many :speakers, through: :reports
end
