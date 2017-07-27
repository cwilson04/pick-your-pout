class Answer < ActiveRecord::Base
    belongs_to :question
    has_many :suggestions
end
