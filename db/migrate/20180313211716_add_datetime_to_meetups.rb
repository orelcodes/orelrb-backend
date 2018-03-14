class AddDatetimeToMeetups < ActiveRecord::Migration[5.1]
  def change
    add_column :meetups, :datetime, :datetime
  end
end
