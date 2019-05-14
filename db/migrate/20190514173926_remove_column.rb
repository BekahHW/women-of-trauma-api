class RemoveColumn < ActiveRecord::Migration[5.0]
  def change
    remove_column :narrative, :user_id
  end
end
