class CreateArtists < ActiveRecord::Migration[7.1]
  def change
    create_table :artists do |t|
      t.string :name
      t.string :gender
      t.string :age
      t.text :bio
      t.string :experience
      t.integer :studio_id
      t.string :instagram
      t.string :email
      t.string :contact_method
      t.integer :user_id
      t.integer :specializations_count

      t.timestamps
    end
  end
end
