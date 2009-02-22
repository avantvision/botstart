class HoboMigration28 < ActiveRecord::Migration
  def self.up
    add_column :tasks, :taskfile_file_name, :string
    add_column :tasks, :taskfile_content_type, :string
    add_column :tasks, :taskfile_file_size, :string
  end

  def self.down
    remove_column :tasks, :taskfile_file_name
    remove_column :tasks, :taskfile_content_type
    remove_column :tasks, :taskfile_file_size
  end
end
