class HoboMigration27 < ActiveRecord::Migration
  def self.up
    remove_column :projects, :projectfile_content_type
    remove_column :projects, :projectfile_file_name
    remove_column :projects, :projectfile_file_size
  end

  def self.down
    add_column :projects, :projectfile_content_type, :string
    add_column :projects, :projectfile_file_name, :string
    add_column :projects, :projectfile_file_size, :string
  end
end
