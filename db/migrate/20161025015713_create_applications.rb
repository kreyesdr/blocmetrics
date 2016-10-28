class CreateApplications < ActiveRecord::Migration
  def change
    create_table :applications do |t|
      t.string :name
      t.string :description
      t.string :url
      t.references :user, index: true, foreign_key: true
      t.timestamps null: false
    end
    add_index :applications, :url, unique: true
  end
end
