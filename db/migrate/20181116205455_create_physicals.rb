class CreatePhysicals < ActiveRecord::Migration[5.2]
  def change
    create_table :physicals do |t|
      t.integer :rating
      t.text :note

      t.timestamps
    end
  end
end
