class HoboMigration39 < ActiveRecord::Migration
  def self.up
    add_column :projectattachments, :pattachment_file_name, :string
    add_column :projectattachments, :pattachment_content_type, :string
    add_column :projectattachments, :pattachment_file_size, :string
  end

  def self.down
    remove_column :projectattachments, :pattachment_file_name
    remove_column :projectattachments, :pattachment_content_type
    remove_column :projectattachments, :pattachment_file_size
  end
end
