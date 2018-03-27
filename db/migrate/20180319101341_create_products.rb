class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :owner
      t.string :photo1
      t.string :photo2
      t.string :photo3

      t.timestamps
    end
  end
end
