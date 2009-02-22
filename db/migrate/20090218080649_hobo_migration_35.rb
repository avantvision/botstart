class HoboMigration35 < ActiveRecord::Migration
  def self.up
    remove_column :tasks, :attachment1_file_size
    remove_column :tasks, :attachment1_content_type
  end

  def self.down
    add_column :tasks, :attachment1_file_size, :string
    add_column :tasks, :attachment1_content_type, :string
  end
end
