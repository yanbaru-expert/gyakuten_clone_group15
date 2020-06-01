class SolutionsController < ApplicationController
    def create
        @question = Question.find(params[:question_id])
        @solution = @question.solutions.new(solution_params)
        if @solution.save
            redirect_to question_path(@question), notice: "投稿完了しました。"
        else
            flash.now[:alert] = "投稿に失敗しました。"
            render 'questions/show'
        end
    end

    private

    def solution_params
        params.require(:solution).permit(:answer)
    end
end
