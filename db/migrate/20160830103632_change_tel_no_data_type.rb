class ChangeTelNoDataType < ActiveRecord::Migration[5.0]
  def change
    change_column :people, :telNo, 'integer USING CAST("telNo" AS integer)'
  end
end
