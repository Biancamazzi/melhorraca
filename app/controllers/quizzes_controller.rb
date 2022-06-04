class QuizzesController < ApplicationController

  def create
    @quiz = Quiz.new(quiz_params)
    @quiz.save
    redirect_to quiz_path(@quiz)
  end

  def show
    @quiz = Quiz.find(params[:id])
  end

  private
  def quiz_params
    params.require(:review).permit(:description, :user_id)
  end
end
