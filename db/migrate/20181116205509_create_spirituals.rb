class CreateSpirituals < ActiveRecord::Migration[5.2]
  def change
    create_table :spirituals do |t|
      t.integer :rating
      t.text :note

      t.timestamps
    end
  end
end
