class HoboMigration26 < ActiveRecord::Migration
  def self.up
    add_column :projects, :projectfile_file_name, :string
    add_column :projects, :projectfile_content_type, :string
    add_column :projects, :projectfile_file_size, :string
    remove_column :projects, :attachment1_file_name
  end

  def self.down
    remove_column :projects, :projectfile_file_name
    remove_column :projects, :projectfile_content_type
    remove_column :projects, :projectfile_file_size
    add_column :projects, :attachment1_file_name, :string
  end
end
