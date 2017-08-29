class SuggestionsController < ApplicationController
    def index
        @suggestions = current_user.suggestions
    end

    def update
        suggestion = Suggestion.find(params[:id])
        answer = Answer.find(params[:answer])
        suggestion.answers.push(answer)
        question = Question.find(params[:question][:id])

        if question == Question.last
          redirect_to suggestions_path
        else
          redirect_to suggestion_question_path({suggestion_id:suggestion.id,id:(question.id+1)})
        end
    end
end
