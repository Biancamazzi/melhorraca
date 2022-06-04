class QuestionsController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :index, only: [:approve, :decline]

  def index
    @questions = Question.all
  end


  def show
    # @question = Question.find(params[:id])
    @questions_id = Question.where('id >= ?', params[:id])
  end

  def approve
    # user swipes right
    @quiz = Quiz.first

    # cria um yes por usuario
    Answer.create(:question_id => params[:id], :answer => true)
  end

  def decline
    # user swipes left
    @quiz = Quiz.first
    Answer.create(:question_id => params[:id], :answer => false)
  end
end
