class QuestionsController < ApplicationController
  def index
    @questions = Question.all
  end

    def approve
        # user swipes right
        @quiz = Quiz.first
        @question = Question.first
        # cria um yes por usuario
        Answer.create(:question_id => @question.id, :answer => true)

    end

    def decline
        # user swipes left
        @quiz = Quiz.first
        @question = Question.first
        Answer.create(:question_id => @question.id, :answer => false)
    end
end
