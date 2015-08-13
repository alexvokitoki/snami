class CreateReplies < ActiveRecord::Migration
  def change
    create_table :replies do |t|
      t.string :username
      t.text :text

      t.timestamps
    end
  end
end
