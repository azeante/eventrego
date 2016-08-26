class CreateVolunteers < ActiveRecord::Migration[5.0]
  def change
    create_table :volunteers do |t|
      t.text :role
      t.references :person, foreign_key: true
      t.references :event, foreign_key: true

      t.timestamps
    end
  end
end
