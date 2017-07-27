class QuestionsController < ApplicationController
  before_action :authenticate_user!

  def show
    @question = Question.find(params[:id])
  end
  
  def create
    suggestion = Suggestion.new({user:current_user})
    answer = Answer.find(params[:id])
    suggestion.answers.push(answer)
  end
  
end
