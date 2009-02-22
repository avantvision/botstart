class HoboMigration32 < ActiveRecord::Migration
  def self.up
    add_column :taskfiles, :taskattachment_file_name, :string
    add_column :taskfiles, :taskattachment_content_type, :string
    add_column :taskfiles, :taskattachment_file_size, :string
  end

  def self.down
    remove_column :taskfiles, :taskattachment_file_name
    remove_column :taskfiles, :taskattachment_content_type
    remove_column :taskfiles, :taskattachment_file_size
  end
end
