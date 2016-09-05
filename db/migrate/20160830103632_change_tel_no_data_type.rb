class ChangeTelNoDataType < ActiveRecord::Migration[5.0]
  def change
    remove_column :people, :telNo
    add_column :people, :telNo, :integer, default: 0
  end
end
