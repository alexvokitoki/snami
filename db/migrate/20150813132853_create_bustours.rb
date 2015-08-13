class CreateBustours < ActiveRecord::Migration
  def change
    create_table :bustours do |t|
      t.string :name
      t.string :price
      t.string :imgurl
      t.text :about

      t.timestamps
    end
  end
end
