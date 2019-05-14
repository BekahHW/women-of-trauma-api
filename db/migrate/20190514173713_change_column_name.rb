class ChangeColumnName < ActiveRecord::Migration[5.0]
  def change
    rename_column :narrative, :trauma_id, :trauma
  end
end
