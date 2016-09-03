class AddIndexToPeopleEmailAddress < ActiveRecord::Migration[5.0]
  def change
        add_index :people, :emailAddress, unique: true
  end
end
