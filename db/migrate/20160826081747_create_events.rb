class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.date :dateOfEvent
      t.time :timeOfEvent
      t.string :venue
      t.float :price
      t.string :title
      t.integer :maximumParticipants
      t.integer :minimumParticipants
      t.text :participantsMustBring
      t.text :notes

      t.timestamps
    end
  end
end
