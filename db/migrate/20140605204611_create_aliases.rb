class CreateAliases < ActiveRecord::Migration
  def change
    create_table :aliases do |t|
      t.string :name
      t.references :submission, index: true

      t.timestamps
    end
  end
end
