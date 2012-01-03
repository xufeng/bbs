class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :passwd
      t.string :name
      t.string :location
      t.string :bio
      t.string :website
      t.name :avatar_file
      t.integer :state
      t.string :qq
      t.datatime :last_logined_at
      t.string :tagline

      t.timestamps
    end
  end
end
