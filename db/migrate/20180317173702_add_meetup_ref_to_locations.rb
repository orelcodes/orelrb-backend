class AddMeetupRefToLocations < ActiveRecord::Migration[5.1]
  def change
    add_reference :locations, :meetup, foreign_key: true
  end
end
