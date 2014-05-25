class CreateCarriers < ActiveRecord::Migration
  def change
    create_table :carriers do |t|
      t.string :name
      t.attachment :logo
      t.string :country_code
      t.timestamps
    end
  end
end
