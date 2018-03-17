class Meetup < ApplicationRecord
  has_many :speakers
  has_many :reports, through: :speakers
end
