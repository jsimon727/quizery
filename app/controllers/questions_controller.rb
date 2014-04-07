class QuestionsController < ApplicationController
  def index
  end

  def new
  end

  def create
    @quiz = Quiz.find(params[:quiz_id])

    @question = @quiz.questions.new(question_params)

    if @question.save
      render json: @question
    else
      render status: 400, nothing: true
    end
  end


  private

  def question_params
    params.require(:question).permit(:query, :number, :time_limit)
  end

end