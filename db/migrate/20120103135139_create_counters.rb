class CreateCounters < ActiveRecord::Migration
  def change
    create_table :counters do |t|
      t.string :key
      t.string :value

      t.timestamps
    end
  end
end
