class AddSalary < ActiveRecord::Migration
  def self.up
    add_column :people, :salary, :integer
  end

  def self.down
    drop_column :people, :salary
  end
end
