class CreatePeople < ActiveRecord::Migration[5.0]
  def change
    create_table :people do |t|
      t.string :firstName
      t.string :lastName
      t.string :emailAddress
      t.string :telNo
      t.boolean :ifSubscribed
      t.string :gender

      t.timestamps
    end
  end
end
