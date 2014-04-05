class QuizzesController < ApplicationController
  def index
  end

  def new
  end

  def create
    @quiz = Quiz.new(quiz_params)

    if @quiz.save
      render json: @quiz
    else
      render status: 400, nothing: true
    end
  end


  private

  def quiz_params
    params.require(:quiz).permit(:category, :name, :time_limit, :start_time)
  end

end