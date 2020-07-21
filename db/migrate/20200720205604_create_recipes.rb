class CreateRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :recipes do |t|
      t.integer :cuisine_id
      t.string :name
      t.string :image_url
      t.string :instruction
      t.integer :yield
      t.integer :rating
      t.integer :user_id
      t.integer :time

      t.timestamps
    end
  end
end
