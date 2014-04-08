class ScoresController < ApplicationController

  def index
  end

  def create
    find_quiz_name
    user_score = check_score
    if current_user
      @user = User.find(current_user.id)
      @score = @user.scores.create(quiz_id: params["quiz_id"].to_i, value: user_score.to_i, quiz_name: @quizname )
      render json: @score
    else
      @score = Score.create(quiz_id: params["quiz_id"].to_i, value: user_score.to_i, quiz_name: @quizname )
      render json: @score
    end
  end

  def check_score
    score = 0
    @answers = []
    params["answer"].each do |answer|
     @answers << Answer.find((answer.to_i))
    end
    @answers.each do |answer|
      if answer.correct == true
        score = score + 1
      end
    end
    score = (score.to_f / (params["answer"].length)) * 100
    return score
  end

  def find_quiz_name
    @quiz = Quiz.find(params["quiz_id"].to_i)
    @quizname = @quiz.name
  end

end