class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.text :description, :limit => 16777215
      t.string :address
      t.date :start_date
      t.date :end_date
      t.string :contact_email
      t.string :contact_no
      t.decimal  :fees,  precision: 30, scale: 10, default: 0.0
      t.integer :created_by
      t.string :avatar
      t.timestamps null: false
    end
  end
end
