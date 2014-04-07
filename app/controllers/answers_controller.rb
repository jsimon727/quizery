class AnswersController < ApplicationController

  def create
    @quiz = Quiz.find(params[:quiz_id])

    @question = @quiz.questions.new(question_params)

    if @question.save
      render json: @question
    else
      render status: 400, nothing: true
    end
  end

  # def check_correct
  #   @score = 0
  #   @answer = Answer.find(params[:id])
  #   @question = Question.find(@answer.question_id)
  #   @correct_answer = @question.answers.where(correct: 'true')
  #   @correct_answer[0].id = @answer.id ? (@score + 1) : @score
  # end 
    

  private
  def answer_params
    params.require(:answer).permit(:name, :correct)
  end

end