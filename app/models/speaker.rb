class Speaker < ApplicationRecord
  has_many :reports
  has_many :meetups, through: :reports
end
