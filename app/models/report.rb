class Report < ApplicationRecord
  belongs_to :speaker
  belongs_to :meetup
end
