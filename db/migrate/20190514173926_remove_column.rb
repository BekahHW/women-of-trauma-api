class RemoveColumn < ActiveRecord::Migration[5.0]
  def change
    remove_column :narratives, :user_id
  end
end
