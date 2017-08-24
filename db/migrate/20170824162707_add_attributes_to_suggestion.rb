class AddAttributesToSuggestion < ActiveRecord::Migration
  def change
    remove_column :suggestions,:text,:string
    add_column :suggestions,:skin_tone,:string
    add_column :suggestions,:lip_look,:string
    add_column :suggestions,:color,:string
    add_column :suggestions,:finish,:string
    add_column :suggestions,:color_recommendation,:string
    add_column :suggestions,:gloss_recommendation,:string
  end
end
