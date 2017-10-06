class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :author
      t.text :message
      t.integer :post_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
