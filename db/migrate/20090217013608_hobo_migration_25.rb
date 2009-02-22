class HoboMigration25 < ActiveRecord::Migration
  def self.up
    remove_column :projects, :attachment1_file_size
    remove_column :projects, :attachment1_content_type
  end

  def self.down
    add_column :projects, :attachment1_file_size, :string
    add_column :projects, :attachment1_content_type, :string
  end
end
