class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username, NULL: false
      t.string :password, NULL: false
      t.timestamps
    end
  end
end
