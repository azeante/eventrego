class CreatePresenters < ActiveRecord::Migration[5.0]
  def change
    create_table :presenters do |t|
      t.text :biography
      t.text :remunerationArrangements
      t.float :allowance
      t.float :remuneration
      t.references :person, foreign_key: true
      t.references :event, foreign_key: true

      t.timestamps
    end
  end
end
