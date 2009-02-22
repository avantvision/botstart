class HoboMigration29 < ActiveRecord::Migration
  def self.up
    rename_column :tasks, :taskfile_content_type, :taskattachment_content_type
    rename_column :tasks, :taskfile_file_name, :taskattachment_file_name
    add_column :tasks, :taskattachment_file_size, :string
  end

  def self.down
    rename_column :tasks, :taskattachment_content_type, :taskfile_content_type
    rename_column :tasks, :taskattachment_file_name, :taskfile_file_name
    remove_column :tasks, :taskattachment_file_size
  end
end
