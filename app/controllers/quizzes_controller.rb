class QuizzesController < ApplicationController
  def index
    @quizzes = Quiz.all
    if current_user
      @user = User.find(current_user.id)
    end
  end

  def new
    @quiz = Quiz.new
    @quiz.questions.build
    @quiz.questions.each do |question|
      question.answers.build
    end
  end

  def show
    @quiz = Quiz.find(params[:id])
    @questions = @quiz.questions
  end

  def create
    @quiz = Quiz.new(quiz_params)
    if @quiz.save
     redirect_to @quiz, notice: "Successfully created survey."
    else
      render :new
    end
  end


  #  score = 0
  #   if answer.correct == true
  #     score + 1
  #   else
  #     score
  #   end
  # end


  
    # @question = Question.find(@answer.question_id)
    # @correct_answer = @question.answers.where(correct: 'true')
    # @correct_answer[0].id = @answer.id ? (@score + 1) : @score



  private

  def quiz_params
    params.require(:quiz).permit(:category, :name, :time_limit, :start_date, questions_attributes: [:query, :number, :time_limit, answers_attributes: [:name, :number, :correct]])
  end

end