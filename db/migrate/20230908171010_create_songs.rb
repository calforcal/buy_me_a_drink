class CreateSongs < ActiveRecord::Migration[7.0]
  def change
    create_table :songs do |t|
      t.string :title
      t.string :album
      t.string :lyrics
      t.string :drink
      t.integer :status

      t.timestamps
    end
  end
end
