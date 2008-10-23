class AddDeptidToHardwareAssigns < ActiveRecord::Migration
  def self.up
    add_column :hardware_assigns, :department_id, :integer
  end

  def self.down
    remove_column :hardware_assigns, :department_id
  end
end
