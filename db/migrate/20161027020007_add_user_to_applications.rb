class AddUserToApplications < ActiveRecord::Migration
  def alter
    add_column :applications, :user_id, :integer
    add_index :applications, :user_id
  end
end
