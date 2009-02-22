class HoboMigration33 < ActiveRecord::Migration
  def self.up
    drop_table :taskfiles
  end

  def self.down
    create_table "taskfiles", :force => true do |t|
      t.integer  "task_id"
      t.datetime "created_at"
      t.datetime "updated_at"
      t.string   "taskattachment_file_name"
      t.string   "taskattachment_content_type"
      t.string   "taskattachment_file_size"
    end
  end
end
