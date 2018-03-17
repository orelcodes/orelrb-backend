class AddMeetupRefToReports < ActiveRecord::Migration[5.1]
  def change
    add_reference :reports, :meetup, foreign_key: true
  end
end
