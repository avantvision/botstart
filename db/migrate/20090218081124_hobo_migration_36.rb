class HoboMigration36 < ActiveRecord::Migration
  def self.up
    create_table :projectattachments do |t|
      t.integer  :user_id
      t.integer  :project_id
      t.datetime :created_at
      t.datetime :updated_at
    end
    
    remove_column :tasks, :attachment1_file_name
  end

  def self.down
    add_column :tasks, :attachment1_file_name, :string
    
    drop_table :projectattachments
  end
end
