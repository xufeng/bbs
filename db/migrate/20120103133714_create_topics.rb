class CreateTopics < ActiveRecord::Migration
  def change
    create_table :topics do |t|
      t.string :title
      t.references :node
      t.text :body
      t.references :user
      t.integer :replies_count
      t.integer :last_reply_user_id
      t.datatime :replied_at
      t.string :source

      t.timestamps
    end
    add_index :topics, :node_id
    add_index :topics, :user_id
  end
end
