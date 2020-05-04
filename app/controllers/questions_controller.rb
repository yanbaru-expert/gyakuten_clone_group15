class QuestionsController < ApplicationController
    def index
      @questions = Question.all.order(id:"DESC")
      @question = Question.new
    end

    def create
      @questions = Question.new(question_params)
      redirect_to questions_path
    end

    private

    def question_params
      params.require(:question).permit(:title, :detail)
    end

end
