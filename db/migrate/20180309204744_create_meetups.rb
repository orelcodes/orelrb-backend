class CreateMeetups < ActiveRecord::Migration[5.1]
  def change
    create_table :meetups do |t|
      t.string :title, null: false
      t.text :description

      t.timestamps
    end
  end
end
