class CreatePieces < ActiveRecord::Migration
  def change
    create_table :pieces do |t|
      t.string :name
      t.string :medium
      t.text :description
      t.float :height
      t.float :length
      t.float :width
      t.float :weight
      t.string :original_price

      t.integer :artist_id

      t.timestamps
    end
  end
end
