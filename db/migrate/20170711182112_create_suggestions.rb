class CreateSuggestions < ActiveRecord::Migration
  def change
    create_table :suggestions do |t|
      t.string :text
      t.belongs_to :user
      

      t.timestamps null: false
    end
  end
end
