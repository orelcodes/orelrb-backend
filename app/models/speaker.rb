class Speaker < ApplicationRecord
  has_many :meetups
  has_many :reports, through: :meetups
end
