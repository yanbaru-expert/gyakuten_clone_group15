class QuestionsController < ApplicationController
    def index
      @questions = Question.all.order(id:"DESC")
      @question = Question.new
    end

    def create
      @questions = Question.all
      @question = Question.new(question_params)
        if @question.save
          redirect_to questions_path
        else
          render :index
        end
    end

    private

    def question_params
      params.require(:question).permit(:title, :detail)
    end

end
