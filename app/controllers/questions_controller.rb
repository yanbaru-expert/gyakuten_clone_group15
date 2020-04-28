class QuestionsController < ApplicationController
    def index
      @questions = Question.all(id: "DESC")
    end
end
