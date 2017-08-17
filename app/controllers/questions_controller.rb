class QuestionsController < ApplicationController
  before_action :authenticate_user!

  def show
    @question = Question.find(params[:id])
    @suggestion = Suggestion.find(params[:suggestion_id])
  end
  
  def create
    
  end
  
end
