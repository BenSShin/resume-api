class CreateCapstones < ActiveRecord::Migration[7.0]
  def change
    create_table :capstones do |t|
      t.string :capstone_name
      t.text :description
      t.string :url
      t.string :screenshot
      t.integer :user_id

      t.timestamps
    end
  end
end
