class CreateAttendees < ActiveRecord::Migration[5.0]
  def change
    create_table :attendees do |t|
      t.datetime :timeRegistration
      t.datetime :timePayment
      t.float :amountBilled
      t.float :amountPaid
      t.references :person, foreign_key: true
      t.references :event, foreign_key: true

      t.timestamps
    end
  end
end
