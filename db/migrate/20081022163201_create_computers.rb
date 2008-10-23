class CreateComputers < ActiveRecord::Migration
  def self.up
    create_table :computers do |t|
      t.string :control
      t.string :serial
      t.string :model

      t.timestamps
    end
  end

  def self.down
    drop_table :computers
  end
end
