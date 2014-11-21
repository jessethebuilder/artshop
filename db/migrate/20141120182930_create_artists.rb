class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.string :name
      t.text :description
      t.float :original_rate
      t.float :print_rate

      t.timestamps
    end
  end
end
