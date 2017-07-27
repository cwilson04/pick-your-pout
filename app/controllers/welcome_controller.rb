class WelcomeController < ApplicationController
  def index
  end

  def about
  end
  
  def start_survey
    suggestion = Suggestion.create({user:current_user})
    redirect_to suggestion_question_path({suggestion_id:suggestion.id,id:1})
  end

end
