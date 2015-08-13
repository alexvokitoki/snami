class CreateCountries < ActiveRecord::Migration
  def change
    create_table :countries do |t|
      t.string :name
      t.string :imgurl
      t.text :about

      t.timestamps
    end
  end
end
