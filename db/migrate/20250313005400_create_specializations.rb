class CreateSpecializations < ActiveRecord::Migration[7.1]
  def change
    create_table :specializations do |t|
      t.integer :artist_id
      t.integer :style_id

      t.timestamps
    end
  end
end
