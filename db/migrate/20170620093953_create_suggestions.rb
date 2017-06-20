class CreateSuggestions < ActiveRecord::Migration
  def change
  	create_table :suggestions do |t|
  		t.text :body, NULL: false
  		t.string :author
  		t.timestamps
  	end
  end
end
