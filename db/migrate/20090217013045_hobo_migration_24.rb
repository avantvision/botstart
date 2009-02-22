class HoboMigration24 < ActiveRecord::Migration
  def self.up
    remove_column :projects, :attachment1_updated_at
    change_column :projects, :attachment1_file_size, :string, :limit => 255
  end

  def self.down
    add_column :projects, :attachment1_updated_at, :datetime
    change_column :projects, :attachment1_file_size, :integer
  end
end
