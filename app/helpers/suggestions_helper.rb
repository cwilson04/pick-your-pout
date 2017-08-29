module SuggestionsHelper
    values = {0=>"a",1=>"b",2=>"c",3=>"d",4=>"e"}
    answer_letters = []
    def analyze(answers)
        Question.all.each_with_index do | q, i | 
           answer_index = q.answers.index(answers[i])
           answer_letters.push(values[answer_index])
        end
        
    end
    
end
