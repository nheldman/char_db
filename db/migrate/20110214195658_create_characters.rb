class CreateCharacters < ActiveRecord::Migration
  def self.up
    create_table :characters do |t|
      t.string :name
      t.string :real_name
      t.string :gender
      t.string :alignment
      t.integer :energy_projection
      t.integer :strength
      t.integer :durability
      t.integer :fighting_skill
      t.integer :intelligence
      t.integer :speed

      t.timestamps
    end
  end

  def self.down
    drop_table :characters
  end
end
