class CreateSections < ActiveRecord::Migration
  def change
    create_table :sections do |t|
      t.string :name, :null => false
      t.integer :sort, :null => false, :default => 0

      t.timestamps
    end

    add_index :sections, :sort
  end
end
