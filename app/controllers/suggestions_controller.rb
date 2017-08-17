class SuggestionsController < ApplicationController
    def index
        @suggestions = current_user.suggestions
    end
    
    def update
        byebug
        @suggestion = Suggestion.find(params[:suggestion_id])
        @answer = Answer.find(params[:answer])
        @suggestion.answers.push(@answer)
        redirect_to suggestion_question_path({suggestion_id:@suggestion.id,id:(params[:id]+1)})
    end
end
