class CreateApplications < ActiveRecord::Migration
  def change
    create_table :applications do |t|
      t.string :name, null: false, default: ''
      t.string :url, null: false, default: ''
      t.references :user, index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end
