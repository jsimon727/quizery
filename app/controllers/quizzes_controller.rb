class QuizzesController < ApplicationController
  def index
    @quizzes = Quiz.search(params[:search])
    @all_quizzes = Quiz.all
    @all_quizzes.group_by(&:category)
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
    @quiz.category = params["category"]
    if @quiz.save
     redirect_to @quiz, notice: "Successfully created survey."
    else
      render :new
    end
  end

  private

  def quiz_params
    params.require(:quiz).permit(:category, :name, :time_limit, :start_date, questions_attributes: [:query, :number, :time_limit, answers_attributes: [:name, :number, :correct]])
  end

end