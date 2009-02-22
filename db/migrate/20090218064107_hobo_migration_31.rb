class HoboMigration31 < ActiveRecord::Migration
  def self.up
    remove_column :tasks, :taskattachment_content_type
    remove_column :tasks, :taskattachment_file_size
    remove_column :tasks, :taskattachment_file_name
  end

  def self.down
    add_column :tasks, :taskattachment_content_type, :string
    add_column :tasks, :taskattachment_file_size, :string
    add_column :tasks, :taskattachment_file_name, :string
  end
end
