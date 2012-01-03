class CreateNodes < ActiveRecord::Migration
  def change
    create_table :nodes do |t|
      t.string :name, :null => false
      t.references :section, :null => false
      t.integer :sort, :null => false, :default => 0
      t.integer :topics_count, :null => false, :default => 0
      t.string :summary

      t.timestamps
    end
    add_index :nodes, :section_id
  end
end
