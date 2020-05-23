class SolutionsController < ApplicationController
    def create
        @question = Question.find(params[:question_id])
        @question.solutions.create(solution_params)
        redirect_to question_path(@question)
    end

    private

    def solution_params
        params.require(:solution).permit(:answer)
    end
end
