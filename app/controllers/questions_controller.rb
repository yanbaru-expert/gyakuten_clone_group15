class QuestionsController < ApplicationController
    def index
      @questions = Question.all.order(id:"DESC")
      @question = Question.new
    end

    def create
      @question = Question.new(question_params)
        if @question.save
          redirect_to questions_path, notice: "投稿完了しました。"
        else
          flash.now[:alert] = "投稿に失敗しました。"
          @questions = Question.all
          render :index
        end
    end

    def show
      @question = Question.find(params[:id])
    end

    private

    def question_params
      params.require(:question).permit(:title, :detail)
    end

end
