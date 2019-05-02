class CreateNarratives < ActiveRecord::Migration[5.0]
  def change
    create_table :narratives do |t|
      t.string :title
      t.string :tagline
      t.text :story
      t.integer :user_id
      t.string :trauma_id

      t.timestamps
    end
  end
end
