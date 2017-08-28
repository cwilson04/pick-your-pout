class CreateAnswersSuggestions < ActiveRecord::Migration
  def change
    create_table :answers_suggestions do |t|
      t.belongs_to :answer, index: true
      t.belongs_to :suggestion, index: true
    end
  end
end
