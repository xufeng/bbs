class CreateReplies < ActiveRecord::Migration
  def change
    create_table :replies do |t|
      t.references :topic
      t.text :body
      t.references :user
      t.integer :state
      t.string :source

      t.timestamps
    end
    add_index :replies, :topic_id
    add_index :replies, :user_id
  end
end
