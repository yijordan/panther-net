class CreateStudios < ActiveRecord::Migration[7.1]
  def change
    create_table :studios do |t|
      t.string :name
      t.integer :city_id
      t.string :walk_in
      t.float :shop_minimum
      t.integer :artists_count
      t.string :address
      t.string :phone

      t.timestamps
    end
  end
end
