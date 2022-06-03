class QuestionsController < ApplicationController
  def index
    @questions = Question.all
  end

    def aprove
        # user swipes right
        # get the user id, and quiz_id, and question_id and create an answer
        @quiz = Quiz.find(params[:quiz_id])
        @question = Question.find(params[:question_id])
        Answer.create(:user_id => current_user.id, :quiz_id => @quiz.id, :question_id => @question.id, :answer => true)
    end

    def decline
        # user swipes left
        @quiz = Quiz.find(params[:quiz_id])
        @question = Question.find(params[:question_id])
        Answer.create(:user_id => current_user.id, :quiz_id => @quiz.id, :question_id => @question.id, :answer => false)
    end
end
