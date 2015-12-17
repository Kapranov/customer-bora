class CreateSubmissions < ActiveRecord::Migration
  def change
    create_table :submissions do |t|
      t.string :name
      t.string :serial_no
      t.references :user, index: true

      t.timestamps
    end
  end
end
