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
    @questions = @quiz.questions.all 
  end

  def create
    binding.pry
    @quiz = Quiz.new(quiz_params)
    if @quiz.save
     redirect_to @quiz, notice: "Successfully created survey."
    else
      render :new
    end

    # if @quiz.save
    #   render json: @quiz
    # else
    #   render status: 400, nothing: true
    # end
  end


  private

  def quiz_params
    params.require(:quiz).permit(:category, :name, :time_limit, :start_date, questions_attributes: [:query, :number, :time_limit], answers_attributes: [:name, :number, :correct])
  end

end