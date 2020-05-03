class QuestionsController < ApplicationController
    def index
      @questions = Question.all.order(id:"DESC")
    end

    def create
      @questions = Question.new(question_params)
      if @questions.save
        redirect_to questions_path
      else
        render :index
      end
    end

    private

    def question_params
      params.permit(:title, :detail)
    end

end
