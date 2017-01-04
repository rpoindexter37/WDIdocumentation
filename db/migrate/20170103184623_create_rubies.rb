class CreateRubies < ActiveRecord::Migration
  def change
    create_table :rubies do |t|
      t.string :body
      t.string :name
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
