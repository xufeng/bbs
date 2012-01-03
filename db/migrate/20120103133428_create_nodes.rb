class CreateNodes < ActiveRecord::Migration
  def change
    create_table :nodes do |t|
      t.string :name
      t.references :section
      t.integer :sort
      t.integer :topics_count
      t.string :summary

      t.timestamps
    end
    add_index :nodes, :section_id
  end
end
